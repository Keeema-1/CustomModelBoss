# コマンドとリソパでボスを作ろう！  3章 ボスのアクションを作る編

**[【メインへ】](https://github.com/Keeema-1/CustomModelBoss)**

 - **[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)** 
     - **[【1章 ボスを動かす編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec1.md)**  
         - **[【自作モデルをマイクラ上で表示する方法】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecA.md)**
             - **[【BlockBenchの使い方】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecB.md)**
         - **[【1章までのサンプルデータパック】](https://github.com/Keeema-1/CustomModelBoss/blob/sample1/README.md)**
     - **[【2章 ボスのHPを設定する編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec2.md)**
     - **3章 アクションを作る編 ← Here**
     - **[【4章 手直し編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec4.md)**
         - **[【ボス完成品のサンプルデータパック】](https://github.com/Keeema-1/CustomModelBoss/blob/sample2/README.md)**

## 概説

ざっくりとした流れはこんな感じです。

1. アクションの作成
2. 乱数でアクションを決定
3. アクションを増やす

前章では、ボスのHPの要素を解説しました。本章では、ボスのアクションの要素を実装します。

## 1. アクションの作成

試しに1つ、ボスのアクションを作ってみます。このように、腕のハンマーを振り下ろす攻撃です。

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/11.gif)

アクションの制御用に、いくつかスコアボードを追加します。  
`action`: アクションのid  
`action_time`: アクションの制御タイマー  

`action_time`はアクションを制御するためのタイマーで、毎tick減算をします。このスコアが0になったときにアクションが終了します。

     # execute as <メインエンティティ> で実行:
     execute if score @s action_time matches 1.. run scoreboard players remove @s action_time 1

`action`は現在のアクションのidで、そのスコアに応じて各アクションの処理へ分岐します。

     # execute as <メインエンティティ> で実行:
     execute if score @s action matches 1 run function <アクション1のfunction>
     execute if score @s action matches 2 run function <アクション2のfunction>

アクションを開始する際に、ポーズの呼び出し・各スコアのセットを行います。

    # execute as <メインエンティティ> で実行:
    ## ポーズを呼び出す
    function <腕を振り上げるポーズを呼び出すfunction>
    ## アクションidをセット
    scoreboard players set @s action 1
    ## アクションの制御タイマーをセット
    scoreboard players set @s action_time 80

各アクションのfunction内でアクションの処理を書きます。  
タイマースコアでポーズの変更のタイミングを制御します。tpでの移動、particleやplaysoundでの演出なども使い、ボスのアクションを作ります。

    # execute as <メインエンティティ> で実行:
    ## 腕を振り下ろす
    execute if score @s action_time matches 40 run function <腕を振り下ろすポーズを呼び出すfunction>
    ## 移動
    execute if score @s action_time matches 30..40 run tp ^ ^ ^0.2
    ## 攻撃判定開始
    execute if score @s action_time matches 40 as <右腕位置のスライム> run data merge entity @s {NoAI:0b}
    ## 攻撃判定終了
    execute if score @s action_time matches 10 as <右腕位置のスライム> run data merge entity @s {NoAI:1b}
    ## アクション終了
    execute unless score @s action_time matches 1.. run <アクション終了時のfunction>

アクション終了時のfunctionでは、他のアクションへ遷移するようにします。

こんな感じで、アクションを一つずつ作っていきます。

#### プレイヤーへの攻撃について

ボスがプレイヤーに攻撃する方法ですが、一番簡単なのは当たり判定用エンティティとして敵対モブを使用して、そのエンティティの`NoAI`を変更する方法だと思います。  
nbtで`NoAI:1b`を設定しているモブはプレイヤーに攻撃をしてこなくなるため、プレイヤーへの攻撃を発生させたい間だけこのnbtを0bに、それ以外の間は1bにセットします。  

ライブラリのScoreToHealthやScoreDamageをお借りして、プレイヤーへの攻撃処理もコマンドを使ってしっかり作るという方法もあります。  

## 2. 乱数でアクションを決定

先ほどはアクションが終了したら止まってしまいましたが、アクション終了時にランダムで次のアクションを決めるようにします。  
乱数生成の方法はいろいろあるので、好きな方法を使いましょう。今回は、predicateのrandom_chanceを使った方法を紹介します。

`predicates/random/half.json`として以下のpredicateを作成します。1/2の確率で条件に成功するpredicateです。

    {
        "condition": "minecraft:random_chance",
        "chance": 0.5
    }

このpredicateを使って乱数を手動で生成してみます。

    # 乱数生成(1~4の範囲)
    scoreboard players set $next action 1        
    execute if predicate boss:random/half run scoreboard players add $next action 1
    execute if predicate boss:random/half run scoreboard players add $next action 2

8までの範囲にしたかったら以下のコマンドを追加します。

    execute if predicate boss:random/half run scoreboard players add $next action 4

同様に、さらに倍の範囲にしたかったらさらに倍の数を加算するコマンドを追加していきます。

この方法は手軽でわかりやすく負荷も大きくないと思いますが、2の累乗通りの乱数しか正しく生成できないという制約があります。何かいい方法があったら別の方法を使ってください。

続いて、その乱数を用いて次のアクションを決定します。
        
    # 乱数に応じた次のアクションを開始
    execute if score $next action matches 1 run <アクションAを開始するfunction>
    execute if score $next action matches 2 run <アクションBを開始するfunction>
    execute if score $next action matches 3 run <アクションCを開始するfunction>
    execute if score $next action matches 4 run <アクションDを開始するfunction>

## 3. アクションを増やす

ここまで来たら、あとはアクションをいろいろ追加して、ボス戦が楽しくなるようにアクションを調整していきます。  
次のことを心掛けると良いでしょう。

 - **近距離攻撃、遠距離攻撃など、なるべく多様なアクションを追加する**
     - ボスの動きが単調だと、戦闘も単調で飽きやすくなってしまいます。

 - **プレイヤーとの位置関係でアクションの抽選を分岐する**
     - プレイヤーが遠いのに近距離攻撃ばかりだと違和感が出てしまいます。

 - **ボス戦の中でのボスの変化を作る**
     - HPによる形態変化や特殊ギミックがあるボスは面白いですよね。

~偉そうにこんなこと言ってますが、自分ができているとは限らない~

また、死亡時にはすぐに死亡処理するのではなく、アニメーションをしてから処理すると良いでしょう。

___

**[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)**

### Next: [4章 手直し編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec4.md)
