# コマンドとリソパでボスを作ろう！  2章 ボスのHPを設定する編

## 目次

**[【メインへ】](https://github.com/Keeema-1/CustomModelBoss)**

 - **[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)** 
     - **[【1章 ボスを動かす編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec1.md)**  
         - **[【自作モデルをマイクラ上で表示する方法】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecA.md)**
             - **[【BlockBenchの使い方】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecB.md)**
         - **[【1章までのサンプルデータパック】](https://github.com/Keeema-1/CustomModelBoss/blob/sample1/README.md)**
     - **2章 ボスのHPを設定する編 ← Here**
     - **[【3章 アクションを作る編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec3.md)**
     - **[【4章 手直し編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec4.md)**
         - **[【ボス完成品のサンプルデータパック】](https://github.com/Keeema-1/CustomModelBoss/blob/sample2/README.md)**

## 概説

ざっくりとした流れはこんな感じです。

1. 当たり判定用エンティティ
2. HPをスコアボードで管理
3. ボスバーで表示
4. 死亡処理

前章では、ボスのポーズを作るところまで解説しました。本章では、ボスに対して攻撃を当ててHPを削る、という要素を実装します。

## 1. 当たり判定用エンティティ

ボスの当たり判定として、防具立て以外のエンティティも召喚します。  
スライムはnbtのSizeで大きさを変更することができるため、基本的にはスライムを使うのが良いでしょう。ただし、スライムはkillした際に分裂してしまうので、その際は`/data merge entity <スライム> {Size:0}`で最小サイズに変更してからkillするようにしましょう。

    summon minecraft:slime ~ ~ ~ {Size:2,CustomName:'"ボスの名前"',NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["識別用タグ"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.max_health",Base:1024.0d}],Health:1024.0f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}

`ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]`：透明化  
`Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.max_health",Base:1024.0d}],Health:1024.0f`：移動速度を0に、HPを最大に  

召喚した当たり判定用エンティティは、モデル表示用エンティティからのローカル座標系(^)で位置を決定します。

    # 例：スライムA(当たり判定用)を防具立てB(モデル表示用)基準にtp
    execute as <スライムA> at <防具立てB> run tp ^ ^1 ^0.5

複数のスライムを召喚して、サイズ変更や位置調整をして当たり判定を決定します。

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/7.png)


## 2. HPをスコアボードで管理

続いて、それらのスライムの`Health`を用いて、ボスのHPを管理します。管理用のスコアボードとして`health`、`max_health`を追加します。
召喚時にメインとなるエンティティに最大HPのスコアをセットします。

    scoreboard players set <メインエンティティ> max_health 800

この値を最大HPとして、現在のボスのHPを計算します。初めに`health`を最大HPで初期化します。

    execute as <メインエンティティ> run scoreboard players operation @s health = @s max_health

召喚時にスライムは`Health:1024.0f`としたので、スライムの`Health`から`1024.0f`を減算した数字が、そのスライム与えた累計ダメージとなります。
このダメージの分だけメインエンティティの`health`から減算すれば、現在のボスのHPを求めることができます。

    # execute as <スライム> で実行：
    ## Healthをスコアに代入
    execute store result score @s health run data get entity @s Health
    ## ダメージを反映
    scoreboard players operation <メインエンティティ> health += @s health
    scoreboard players remove <メインエンティティ> health 1024

## 3. ボスバーで表示

次はボスのHPをボスバーで表示してみます。

まず、ボスバーを追加します。ボスバーに表示する名前は召喚時に設定すればよいので、最初は設定しなくても構いません。

    bossbar add boss:health ""

ボス召喚時に、表示プレイヤー、ボス名、ボスバーの最大値を設定します。

    bossbar set boss:health players @a
    bossbar set boss:health name "ボス名"
    execute store result bossbar boss:health max run scoreboard players get <メインエンティティ> max_health

そして、ボスの現在のHPを計算したら、ボスバーの値を更新します。

    execute store result bossbar boss:health value run scoreboard players get <メインエンティティ> health



## 4. 死亡処理

HPが0以下になったとき、死亡処理をします。

    # プレイヤーのボスバー表示を消す
    bossbar set boss:health players
    # kill時の分裂対策として、スライムのサイズを最小にする
    execute as <スライム> run data merge entity @s {Size:0}
    # kill
    kill <ボス用エンティティ>


___

**[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)**

**[【ページトップへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec3.md)**


### Next: [3章 ボスのアクションを作る編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec3.md)
