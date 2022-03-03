# カスタムモデルを使ったボスモデルの表現方法

データパックとリソースパックを使って、カスタムモデルボスを表現しよう！  
あくまで自己流ですが、カスタムモデルボスの作成方法を解説します。
データパック、リソースパック、storage等の知識がある程度ある人向けに解説しています。ご了承ください。  

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/1.gif)

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

メインパーツが動きの軸となるため、体の胴体などにあたる部分にすることをお勧めします。根っこ側のパーツを親パーツ、末端側のパーツを子パーツと呼ばせてもらいます。

パーツごとの親子関係を決めたあと、子パーツは親パーツからのローカル座標(^)でテレポートさせるようにします。そうすることで、たとえば首を曲げた時に、その先の頭も付随して曲がってくれます。

    # 例: 首パーツAにくっつく頭パーツBの位置を決めるとき
    execute as <頭パーツB> at <首パーツA> run tp ^ ^0.5 ^1

全パーツについてテレポートを実装したら、メインパーツを移動させると他のパーツもついてくるはずです。


これで一気にらしくなりましたね！次は関節を設定して、パーツの角度を変えられるよるにします。

## 3. 関節部分を曲げる

パーツの角度を制御するには、nbtのRotationを用います。Rotationを編集するとそれに従って防具立てが回転するので、動かしたい角度の分だけRotationに加算/減算することで制御します。  
制御しやすくするために、スコアボードを追加します。相対角度rx/ry、絶対角度rx_global/ry_globalを追加します。各パーツの関節を動かしたい分だけrx/ryを設定して、それを考慮したワールド上での角度をrx_global/ry_globalで計算し、Rotationに代入します。

#### <具体的な計算方法>
1つの親パーツと、それにくっついている1つの子パーツで考えてみます。前提として親パーツのrx_global/ry_globalが決まっているならば、(子パーツの絶対角度)=(親パーツの絶対角度)+(子パーツの相対角度)です。

        scoreboard players operation <子> rx_global = <親> rx_global
        scoreboard players operation <子> rx_global += <子> rx

        scoreboard players operation <子> ry_global = <親> ry_global
        scoreboard players operation <子> ry_global += <子> ry

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/4.png)

メインのパーツのrx_global/ry_globalはメインパーツのRotationをそのまま使用し、それにくっ付くパーツに順番にこの計算を行い、各々の結果をRotationに代入します。この機構を作れば、相対角度rx/ryを変更すれば角度が変わるはずです。


ここまでで、パーツの角度をスコアボードで管理出来るようになりました。

次は、ポーズの保存・保存したポーズの呼び出しを実装します。

## 4. ポーズの保存/呼び出しをする

### 4-1. ポーズ開発コマンド

まずは、ポーズを設定しやすいようにポーズ開発コマンドを作成します。こんな感じで、チャット欄をポチポチするだけでポーズを作ることができるコマンド機構です。


ポーズ開発コマンドでポーズを決めたら、次はポーズの保存をします。ポーズは各パーツのスコアrx/ryをstorageに代入して保存します。

        # 例: ボス"boss_name"のポーズ"pose_name"を保存するとき
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

### 4-2. 角速度

このままではポーズが一瞬で切り替わるので、滑らかに切り替わるようにします。
新しくスコアボード目標角度rx_goal/ry_goal、角速度drx/dryを追加します。ポーズをセットする時はrx/ryを変更するのでは無く、目標値を変更するようにします。続いて、目標値に対して角速度を加算or減算して近づいていく処理を追加します。ポーズをセットする時にこの角速度を変えることで、動きの速さが変化します。

### 4-3. 別ワールドへのポーズ情報の引継ぎ

これでボスモデル表現は完成!!…と思いきや、このままでは1つ問題点が。ストレージは別ワールドに引き継ぐことが出来ないため、別のワールドにポーズ情報を送るためのコマンドを実装する必要があります。

data merge storage boss:pose {"boss_name":{"pose_name":{"X":{"rx":30,"ry":0},"Y":{"rx":0,"ry":0},...}}}
のように、ストレージに保存したポーズ情報を手打ちで書かなければなりません。

ストレージの内容をコピーする方法として、自分が知っている1つの方法を紹介します。(もっとスマートな方法があれば教えていただきたいです。)
1. VisualStudioCodeの拡張機能 NBT Viewer をインストールする
2. .minecraft\saves\ワールド名\datapacks\データパック名\data\command_storage_XXX.dat (XXX:ストレージの名前空間) を開き、SNBT形式を選択する
3. 表示されたものをコピーし、data merge storage boss:pose の後ろにつながるように該当部分を切り取って整形

これでやっと、ボスモデルの表現の基礎が出来ました。

ここまでをまとめたデータパック＆リソースパックも配布します。なるべく単純なものにしたので、理解したい人は覗いてみるのをオススメします。

ここまでをまとめると、

repeat:
ボスのメインパーツから末端のパーツに向かって、それぞれ以下の処理をする。
･相対座標tpで位置を決定
･親パーツ角度と自身の相対角度から、絶対角度を計算
･ポーズが変更されれば、目標角度に向かって相対角度スコアを加算or減算

impulse:
･ポーズ設定コマンドでポーズを設定し、storageに保存する
･設定したポーズをセットする 
