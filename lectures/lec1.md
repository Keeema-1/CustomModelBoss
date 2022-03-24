# コマンドとリソパでボスを作ろう！  1章 ボスを動かす編

## 目次

**[【メインへ】](https://github.com/Keeema-1/CustomModelBoss)**

**[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)**

1章. **ボスを動かす編**  
2章. **[ボスのHPを設定する編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec2.md)**  
3章. **[ボスのアクションを作る編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec3.md)**  
4章. **[手直し編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec4.md)**  

## 概説

ざっくりとした流れはこんな感じです。

1. 自作モデルをマイクラ上で表示する  → **[【詳細】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecA.md)**
2. ボスのパーツを作成して、組み立てる
3. 関節部分を曲げる
4. ポーズの保存/呼び出しをする


## 1. 自作モデルをマイクラ上で表示する

まずは自作モデルをマイクラ上で表示してみましょう。  
どのように自作モデルを表示するかというと、「リソースパックでアイテムのモデルを変更する」というやり方です。そのアイテムを防具立ての頭に装着させて、防具立てを動かしたりしてボスを動きを表現します。  
モデリングソフトにはBlockBenchを使用しています。この先の解説もBlockBenchを使用している前提で進めていくので、ご了承ください。  

ここの詳細は **[【こちら】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecA.md)**。わかる人は飛ばして2に行きましょう。


## 2. ボスのパーツを作成して、組み立てる

ボスモデルを作成する際には、動かしたいパーツごとに分けてモデルを作成する必要があります。

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/2.png)

パーツの中で、メインとなるパーツを決めます。メインのパーツを根として、他のパーツはそこから伸びる枝のように考えます。

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/3.png)

メインパーツが動きの軸となるため、体の胴体などのあまり動かない部分にすることをお勧めします。つながっている2つのパーツについて、メイン側のパーツを親パーツ、末端側のパーツを子パーツと呼ぶこととします。

パーツごとの親子関係を決めたあと、子パーツは親パーツからのローカル座標系(^)でテレポートさせるようにします。そうすることで、たとえば首を曲げた時に、その先の頭も付随して曲がってくれます。

    # 例: 首パーツAにくっつく頭パーツBの位置を決めるとき
    execute as <頭パーツB> at <首パーツA> run tp ^ ^0.5 ^1

全パーツについてテレポートを実装したら、メインパーツを移動させると他のパーツもついてくるはずです。


次は関節を設定して、パーツの角度を変えられるようにします。

## 3. 関節部分を曲げる

パーツの角度を制御するために、nbtの`Rotation`を用います。`Rotation`を編集するとそれに従って防具立てが回転するので、動かしたい角度の分だけ`Rotation`に加算/減算することで制御します。`/tp`でも角度を変えることが出来ますが、そちらではスコアボードの値をそのまま代入することが出来ないため、ここでは使いません。

制御しやすくするために、スコアボードを追加します。相対角度`rx`/`ry`、絶対角度`rx_global`/`ry_global`を追加します。各パーツの関節を動かしたい分だけ`rx`/`ry`スコアを動かして、それを考慮したワールド上での角度を`rx_global`/`ry_global`スコアで計算し、`Rotation`に代入します。

※ ここではx,yの順番をアーマースタンドのnbtの`Pose`に合わせているため、`Rotation[0] = ry`、`Rotataion[1] = rx`の対応となります。

**<具体的な計算方法>**

1つの親パーツと、それにくっついている1つの子パーツで考えてみます。前提として親パーツの`rx_global`/`ry_global`が決まっているならば、(子パーツの絶対角度)=(親パーツの絶対角度)+(子パーツの相対角度)です。

    scoreboard players operation <子> rx_global = <親> rx_global
    scoreboard players operation <子> rx_global += <子> rx

    scoreboard players operation <子> ry_global = <親> ry_global
    scoreboard players operation <子> ry_global += <子> ry

メインのパーツの`rx_global`/`ry_global`はメインパーツの`Rotation`をそのまま使用します。それにくっ付くパーツに対して順番にこの計算を行い、各々の結果を`Rotation`に代入します。

    execute as <全パーツ> store result entity @s Rotation[1] float 1 run scoreboard players get @s rx_global
    execute as <全パーツ> store result entity @s Rotation[0] float 1 run scoreboard players get @s ry_global

この機構を作れば、相対角度`rx`/`ry`を変更すれば角度が変わるはずです。

ただし、防具立てに関しては、実は`Rotation[1]`を変えても表示上の角度が変わるわけではありません。そこで、別のnbtの`Pose`も使います。  
`{Pose:{Head:[10.0f,20.0f,0.0f]}}`のような形で設定することで、防具立ての頭や手などの角度を変えることができます。`Rotation`とは違い角度が3種類あり、別の回転を表現することも可能です。 


    execute as <全パーツ> store result entity @s Pose.Head[0] float 1 run scoreboard players get @s rx_global

だったら`Pose`だけでいいじゃん、と思うかもしれませんが、ローカル座標系(^)でテレポートさせる際には`Rotataion`を正しく反映させる必要があるため、`Rotation`も使っています。

ここまでで、パーツの角度をスコアボードで管理出来るようになりました。

次は、ポーズの保存・保存したポーズの呼び出しを実装します。

## 4. ポーズの保存/呼び出しをする

### 4-1. ポーズ開発コマンド

まずは、ポーズを設定しやすいようにポーズ開発コマンドを作成します。こんな感じで、チャット欄をポチポチするだけでポーズを作ることができるコマンド機構です。

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/5.gif)

`/tellraw`コマンドでチャット欄に現在の角度情報を表示します。表示したテキストをクリックすると、設定したコマンドを実行することが出来る`"clickEvent"`を使います。
クリックしたらスコアを加算/減算し、再び角度情報を表示しています。このコマンドを使えば、マイクラ上だけで視覚的にポーズの編集をすることができます。

### 4-2. ポーズの保存/呼び出し

ポーズ開発コマンドでポーズを決めたら、次はポーズの保存をします。ポーズは各パーツのスコア`rx`/`ry`をstorageに代入して保存します。

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

### 4-3. 角速度

このままではポーズが一瞬で切り替わるので、滑らかに切り替わるようにします。  

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/6.gif)

新たなスコアボードとして、目標角度`rx_goal`/`ry_goal`、角速度`drx`/`dry`を追加します。ポーズをセットする時は`rx`/`ry`を変更するのでは無く、目標角度値を変更するようにします。  

続いて、目標値に対して角速度を加算or減算して近づいていく処理を追加します。ポーズをセットする時にこの角速度を変えることで、動きの速さが変化します。

    execute if score @s rx < @s rx_goal run scoreboard players operation @s rx += @s drx
    execute if score @s rx > @s rx_goal run scoreboard players operation @s rx -= @s drx

### 4-4. 別ワールドへのポーズ情報の引継ぎ

これでボスモデル表現は完成!!…と思いきや、このままでは1つ問題点が。ストレージの情報を別のワールドに引き継ぐためには、別のワールドにポーズ情報を送るためのコマンドを実装する必要があります。

data merge storage boss:pose {"boss_name":{"pose_name":{"X":{"rx":30,"ry":0},"Y":{"rx":0,"ry":0},...}}}
のように、ストレージに保存したポーズ情報を手打ちで書かなければなりません。

ストレージの内容をコピーする方法として、自分が知っている1つの方法を紹介します。(もっとスマートな方法があれば教えていただきたいです。)  
1. VisualStudioCodeの拡張機能 NBT Viewer をインストールする  
2. .minecraft\saves\ワールド名\datapacks\データパック名\data\command_storage_XXX.dat (XXX:ストレージの名前空間) を開き、SNBT形式を選択する  
3. 表示されたものをコピーし、data merge storage boss:pose の後ろにつながるように該当部分を切り取って整形  

## まとめ

ここまで実装すれば、必要なタイミングで設定したポーズを呼び出すだけで、ボスをアニメーションさせることができます。

毎tick実行される処理と必要なタイミングで実行する処理に分けてまとめると、以下のようになります。

**repeat:**  
>ボスのメインパーツから末端のパーツに向かって、それぞれ以下の処理をする。
> - 親パーツからのローカル座標tpで位置を決定
> - 親パーツの絶対角度と自身の相対角度から、自身の絶対角度を計算
> - ポーズが変更されれば、目標角度に向かって相対角度スコアを加算or減算

**impulse:**
> - ポーズ開発コマンドでポーズを設定し、storageに保存する
> - あらかじめ設定しておいたポーズをセットする  

また、ここまでをまとめたデータパック＆リソースパックも配布します。なるべく単純なものにしたので、理解したい人は覗いてみるのをオススメします。  
詳細は[こちら](https://github.com/Keeema-1/CustomModelBoss/releases/download/v0.0.0/CustomModelBoss-sample1-v0.0.0.zip)  


___

**[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)**

### Next: [2章 ボスのHPを設定する編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec2.md)
