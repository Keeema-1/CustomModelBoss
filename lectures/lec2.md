# コマンドとリソパで自作モデルのボスを動かそう！  2章 ボスのHPを設定する編

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

1. 当たり判定用エンティティ
2. HPをスコアボードで管理
3. ボスバーで表示

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

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/1.gif)

