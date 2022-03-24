# コマンドとリソパでボスを作ろう！

**[【メインへ】](https://github.com/Keeema-1/CustomModelBoss)**

コマンド(データパック)とリソースパックを使って、オリジナルのボスを作ろう！  

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/1.gif)

こんな感じのボスをどうやって作っているのか気になる！という方向けに、自分なりのボス作成方法を解説します。  

※注意※  
 - あくまで自分が使っている方法の紹介であり、これが最もよい方法という訳ではないと思います。実装方法は人それぞれなので、あくまで参考程度に見てもらおうというつもりで書きました。  
 - 最適化よりも分かりやすさを重視して書いている部分もあります。  
 - データパック、各種コマンド関連(scoreboard、nbt、storage等)の知識がある程度ある人向けに解説しています。ご了承ください。(リソースパックについては1章1節部分で解説しています。)  
 - Minecraft Java Edition ver1.18.2 の環境を想定しています。

## 目次

### [1章 ボスを動かす編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec1.md)

1. 自作モデルをマイクラ上で表示する
2. ボスのパーツを作成して、組み立てる
3. 関節部分を曲げる
4. ポーズの保存/呼び出しをする

### [2章 ボスのHPを設定する編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec2.md)

1. 当たり判定用エンティティ
2. HPをスコアボードで管理
3. ボスバーで表示
4. 死亡処理

### [3章 ボスのアクションを作る編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec3.md)

1. アクションの作成
2. 乱数でアクションを決定
3. アクションを増やす

### [4章 手直し編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec4.md)

1. 防具立ての描画ズレ対策
2. Z方向の回転
