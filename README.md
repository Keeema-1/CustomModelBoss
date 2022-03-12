# カスタムモデルを使ったボスモデルの表現方法
# カスタムモデルを使ったボスアニメーション

データパックとリソースパックを使って、カスタムモデルボスのアニメーションを作ろう！  

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/1.gif)

こんな感じのボスをどうやって作っているのか気になる！という方向けに、自分なりのカスタムモデルボスアニメーションの作成方法を解説します。  

※注意※  
 - あくまで自分が使っている方法の紹介であり、これが最もよい方法という訳ではないと思います。実装方法は人それぞれなので、あくまで参考程度に見てもらおうというつもりで書きました。  
 - 最適化よりも分かりやすさを重視して書いている部分もあります。  
 - データパック、リソースパック、各種コマンド(storage等)の知識がある程度ある人向けに解説しています。ご了承ください。  

## 概説

ざっくりとした流れはこんな感じです。

1. 自作モデルをマイクラ上で表示する
2. ボスのパーツを作成して、組み立てる
3. 関節部分を曲げる
4. ポーズの保存/呼び出しをする


## 1. 自作モデルをマイクラ上で表示する

まずは自作モデルをマイクラ上で表示してみましょう。  
どのように自作モデルを表示するかというと、「リソースパックでアイテムのモデルを変更する」というやり方です。そのアイテムを防具立ての頭に装着させて、防具立てを動かしたりしてボスを動きを表現します。  
モデリングソフトにはBlockBenchを使用しています。この先の解説もBlockBenchを使用している前提で進めていくので、ご了承ください。  
ここの詳細は【here】に書きました。わかる人は飛ばして2に行きましょう。


## 2. ボスのパーツを作成して、組み立てる

ボスモデルを作成する際には、動かしたいパーツごとに分けてモデルを作成する必要があります。

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/2.png)

パーツの中で、メインとなるパーツを決めます。メインのパーツを根として、他のパーツはそこから伸びる枝のように考えます。

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/3.png)

メインパーツが動きの軸となるため、体の胴体などのあまり動かない部分にすることをお勧めします。根っこ側のパーツを親パーツ、末端側のパーツを子パーツと呼ばせてもらいます。

パーツごとの親子関係を決めたあと、子パーツは親パーツからのローカル座標系(^)でテレポートさせるようにします。そうすることで、たとえば首を曲げた時に、その先の頭も付随して曲がってくれます。

    # 例: 首パーツAにくっつく頭パーツBの位置を決めるとき
    execute as <頭パーツB> at <首パーツA> run tp ^ ^0.5 ^1

全パーツについてテレポートを実装したら、メインパーツを移動させると他のパーツもついてくるはずです。


次は関節を設定して、パーツの角度を変えられるようにします。

## 3. 関節部分を曲げる

パーツの角度を制御するために、nbtのRotationを用います。Rotationを編集するとそれに従って防具立てが回転するので、動かしたい角度の分だけRotationに加算/減算することで制御します。/tpでも角度を変えることが出来ますが、そちらではスコアボードの値をそのまま代入することが出来ないため、ここでは使いません。  
制御しやすくするために、スコアボードを追加します。相対角度rx/ry、絶対角度rx_global/ry_globalを追加します。各パーツの関節を動かしたい分だけrx/ryを設定して、それを考慮したワールド上での角度をrx_global/ry_globalで計算し、Rotationに代入します。  
※ ここではx,yの順番をアーマースタンドのnbtのPoseに合わせているため、Rotation[0]=ry、Rotataion[1]=rxの対応となります。上下がx,左右がyです。ややこしくてごめんなさい。

#### <具体的な計算方法>
1つの親パーツと、それにくっついている1つの子パーツで考えてみます。前提として親パーツのrx_global/ry_globalが決まっているならば、(子パーツの絶対角度)=(親パーツの絶対角度)+(子パーツの相対角度)です。

        scoreboard players operation <子> rx_global = <親> rx_global
        scoreboard players operation <子> rx_global += <子> rx

        scoreboard players operation <子> ry_global = <親> ry_global
        scoreboard players operation <子> ry_global += <子> ry

メインのパーツのrx_global/ry_globalはメインパーツのRotationをそのまま使用し、それにくっ付くパーツに順番にこの計算を行い、各々の結果をRotationに代入します。

        execute as <全パーツ> store result entity @s Rotation[1] float 1 run scoreboard players get @s rx_global
        execute as <全パーツ> store result entity @s Rotation[0] float 1 run scoreboard players get @s ry_global

この機構を作れば、相対角度rx/ryを変更すれば角度が変わるはずです。


ここまでで、パーツの角度をスコアボードで管理出来るようになりました。

次は、ポーズの保存・保存したポーズの呼び出しを実装します。

## 4. ポーズの保存/呼び出しをする

### 4-1. ポーズ開発コマンド

まずは、ポーズを設定しやすいようにポーズ開発コマンドを作成します。こんな感じで、チャット欄をポチポチするだけでポーズを作ることができるコマンド機構です。

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/5.gif)

tellrawコマンドでチャット欄に現在の角度情報を表示します。表示したテキストをクリックすると、設定したコマンドを実行することが出来る"clickEvent"を使います。
クリックしたらスコアを加算/減算し、再び角度情報を表示しています。このコマンドを使えば、マイクラ上だけで視覚的にポーズの編集をすることができます。

### 4-2. ポーズの保存/呼び出し

ポーズ開発コマンドでポーズを決めたら、次はポーズの保存をします。ポーズは各パーツのスコアrx/ryをstorageに代入して保存します。

        #例: ボス"boss_name"のポーズ"pose_name"を保存するとき
        ## パーツX
        execute store result storage boss:pose boss_name.pose_name.X.rx int 1 run scoreboard players get <パーツX> rx
        execute store result storage boss:pose boss_name.pose_name.X.ry int 1 run scoreboard players get <パーツX> ry
        ## パーツY
        execute store result storage boss:pose boss_name.pose_name.Y.rx int 1 run scoreboard players get <パーツY> rx
        execute store result storage boss:pose boss_name.pose_name.Y.ry int 1 run scoreboard players get <パーツY> ry
        ...

ポーズを呼び出す場合は、逆にstorageからスコアボードに代入します。

        # 例: ボス"boss_name"のポーズ"pose_name"を呼び出すとき
        ## パーツX
        execute store result score <パーツX> rx run data get storage boss:pose boss_name.pose_name.X.rx
        execute store result score <パーツX> ry run data get storage boss:pose boss_name.pose_name.X.ry
        ## パーツY
        execute store result score <パーツY> rx run data get storage boss:pose boss_name.pose_name.Y.rx
        execute store result score <パーツY> ry run data get storage boss:pose boss_name.pose_name.Y.ry
        ...

こんな感じでセット出来ました。

### 4-3. 角速度

このままではポーズが一瞬で切り替わるので、滑らかに切り替わるようにします。  
新しくスコアボード目標角度rx_goal/ry_goal、角速度drx/dryを追加します。ポーズをセットする時はrx/ryを変更するのでは無く、目標角度値を変更するようにします。  

(サンプルGIF)

続いて、目標値に対して角速度を加算or減算して近づいていく処理を追加します。ポーズをセットする時にこの角速度を変えることで、動きの速さが変化します。

### 4-4. 別ワールドへのポーズ情報の引継ぎ

これでボスモデル表現は完成!!…と思いきや、このままでは1つ問題点が。ストレージの情報を別のワールドに引き継ぐためには、別のワールドにポーズ情報を送るためのコマンドを実装する必要があります。

data merge storage boss:pose {"boss_name":{"pose_name":{"X":{"rx":30,"ry":0},"Y":{"rx":0,"ry":0},...}}}
のように、ストレージに保存したポーズ情報を手打ちで書かなければなりません。

ストレージの内容をコピーする方法として、自分が知っている1つの方法を紹介します。(もっとスマートな方法があれば教えていただきたいです。)  
1. VisualStudioCodeの拡張機能 NBT Viewer をインストールする  
2. .minecraft\saves\ワールド名\datapacks\データパック名\data\command_storage_XXX.dat (XXX:ストレージの名前空間) を開き、SNBT形式を選択する  
3. 表示されたものをコピーし、data merge storage boss:pose の後ろにつながるように該当部分を切り取って整形  

これでやっと、ボスモデルの表現の基礎が出来ました。  
これでやっと、カスタムモデルボスアニメーションの基礎が出来ました。

## まとめ

ここまでをまとめると、

repeat:  
ボスのメインパーツから末端のパーツに向かって、それぞれ以下の処理をする。
 - 親パーツからのローカル座標tpで位置を決定
 - 親パーツの絶対角度と自身の相対角度から、自身の絶対角度を計算
 - ポーズが変更されれば、目標角度に向かって相対角度スコアを加算or減算

impulse:
 - ポーズ設定コマンドでポーズを設定し、storageに保存する
 - あらかじめ設定しておいたポーズをセットする  

また、ここまでをまとめたデータパック＆リソースパックも配布します。なるべく単純なものにしたので、理解したい人は覗いてみるのをオススメします。



 - boss
     - general
         - main ここがメイン部分
         - (living) 
         - (dead)
         - active 各パーツへ
     - each
         - boss_A
             - skin モデル表示用エンティティの制御
             - hit_box 当たり判定用エンティティの制御
             - action アクションを制御



 - boss
     - general
         - main ここがメイン部分
         - active 各パーツへ
     - each
         - boss_A
             - skin モデル表示用エンティティの制御




## おまけ
アニメーションの解説は以上ですが、ボスを作るためにはこれだけでは足りません。必要な要素を列挙すると、
 - ボスへ攻撃を与える際の当たり判定、及びボスのHPの実装
 - ボスの動き、ポーズ切り替えの自動化
 - ボスによる攻撃
 - 死亡時の後処理

あたりは必須ですが、他にも
 - ボスバーでのHPの表示
 - 読み込み範囲外に移動したときの対策
などもあります。
