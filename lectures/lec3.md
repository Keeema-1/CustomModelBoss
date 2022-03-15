# コマンドとリソパで自作モデルのボスを動かそう！  3章 ボスのアクションを作る編

[メインへ](https://github.com/Keeema-1/CustomModelEntity)

[解説ホームへ](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/home.md)

コマンド(データパック)とリソースパックを使って、自作モデルのボスを動かそう！  

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/1.gif)

こんな感じのボスをどうやって作っているのか気になる！という方向けに、自分なりの自作モデルのボスを動かす方法を解説します。  

※注意※  
 - あくまで自分が使っている方法の紹介であり、これが最もよい方法という訳ではないと思います。実装方法は人それぞれなので、あくまで参考程度に見てもらおうというつもりで書きました。  
 - 最適化よりも分かりやすさを重視して書いている部分もあります。  
 - データパック、リソースパック、各種コマンド関連(scoreboard、nbt、storage等)の知識がある程度ある人向けに解説しています。ご了承ください。  
 - Minecraft Java Edition ver1.18.2 の環境を想定しています。

## 概説

ざっくりとした流れはこんな感じです。

1. アクションの作成
2. 乱数でアクションを決定
3. アクションのあれこれ

前章では、ボスのHPの要素を解説しました。本章では、ボスのアクションの要素を実装します。

## 1. アクションの作成

試しに1つ、ボスのアクションを作ってみます。このように、腕のハンマーを振り下ろす攻撃です。

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
タイマースコアでポーズの変更のタイミングを制御します。tpでの移動、particleやplaysoundでの演出なども使うと良いでしょう。

    # execute as <メインエンティティ> で実行:
    ## 腕を振り下ろす
    execute if score @s action_time matches 40 run function <腕を振り下ろすポーズを呼び出すfunction>
    ## 移動
    execute if score @s action_time matches 30..40 run tp ^ ^ ^0.2
    ## 攻撃判定開始
    execute if score @s action_time matches 40 as <右腕のスライム> run data merge entity @s {NoAI:0b}
    ## 攻撃判定終了
    execute if score @s action_time matches 10 as <右腕のスライム> run data merge entity @s {NoAI:1b}
    ## アクション終了
    execute unless score @s action_time matches 1.. run scoreboard players set @s action -1

こんな感じで、アクションを一つずつ作っていきます。

プレイヤーに接近する：

回転攻撃：


#### プレイヤーへの攻撃について

ボスがプレイヤーに攻撃する方法ですが、一番簡単なのは当たり判定用エンティティを敵対モブにして、そのエンティティの`NoAI`を変更する方法だと思います。  
nbtで`NoAI:1b`を設定しているモブはプレイヤーに攻撃をしてこなくなるため、プレイヤーへの攻撃を発生させたい間だけこのnbtを0bに設定します。  

ライブラリのScoreToHealthやScoreDamageをお借りして、攻撃処理もコマンドを使ってしっかり作るという方法もあります。  

## 2. 乱数でアクションを決定

先ほどはアクションが終了したら止まってしまいましたが、アクション終了時にランダムで次のアクションを決めるようにします。  
乱数生成の方法はいろいろあるので、好きな方法を使いましょう。今回は、predicateのrandom_chanceを使った方法を紹介します。

`boss/predicates/random/half.json`として以下のpredicateを作成します。1/2の確率で条件に成功するpredicateです。

    {
        "condition": "minecraft:random_chance",
        "chance": 0.5
    }

このpredicateを使って乱数を手動で生成しています。

    # 乱数生成(1~4の範囲)
    scoreboard players set $next action 1        
    execute if predicate boss:random/half run scoreboard players add $next action 1
    execute if predicate boss:random/half run scoreboard players add $next action 2

8までの範囲にしたかったら以下のコマンドを追加します。

    execute if predicate boss:random/half run scoreboard players add $next action 4

同様に、さらに倍の範囲にしたかったらさらに倍の数を加算するコマンドを追加していきます。

この方法は負荷が小さそうですが、2の累乗通りの乱数しか正しく生成できないという制約があります。何かいい方法があったら別の方法を使ってください。

続いて、その乱数を用いて次のアクションを決定します。
        
    # 乱数に応じた次のアクションを開始
    execute if score $next action matches 1 run function <アクションAを開始>
    execute if score $next action matches 2 run function <アクションBを開始>
    execute if score $next action matches 3 run function <アクションCを開始>
    execute if score $next action matches 4 run function <アクションDを開始>
    
    # スコアをリセット
    scoreboard players reset $next action


## 3. アクションのあれこれ

ここまで来たら、あとはアクションをいろいろ追加して、ボス戦が楽しくなるようにアクションを調整していきます。  
次のことを心掛けると良いでしょう。

 - **近距離攻撃、遠距離攻撃など、なるべく多様なアクションを追加する**
     - ボスの動きが単調だと、戦闘も単調で飽きやすくなってしまいます。

 - **プレイヤーとの位置関係でアクションの抽選を分岐する**
     - プレイヤーが遠いのに近距離攻撃ばかりだと違和感がありますからね。

また、死亡時にはすぐに死亡処理するのではなく、アニメーションをしてから処理すると良いでしょう。

___
### Next: [3章 ボスのアクションを作る編](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/lec3.md)

