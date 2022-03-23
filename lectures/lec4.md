# コマンドとリソパでボスを作ろう！  4章 手直し編

## 目次

**[【メインへ】](https://github.com/Keeema-1/CustomModelBoss)**

**[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)**

1章. **[ボスを動かす編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec1.md)**  
2章. **[ボスのHPを設定する編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec2.md)**  
3章. **[ボスのアクションを作る編](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec3.md)**  
4章. **手直し編**  

## 概説

ざっくりとした流れはこんな感じです。

1. 防具立ての描画ズレ対策
2. Z方向の回転

ボス作成の流れを知りたいだけの方は、本章の内容は読まなくてもいいと思います。

## 1. 防具立ての描画ズレ対策

### 1-1. 対策方法の紹介

防具立てを`/tp`等で移動・回転させたとき、画面上で描画のズレが発生してしまいます。  
そこで、そのズレを抑えるための対策として、2つの方法を考えます。

#### 1. モデル表示用エンティティとして、防具立てではなくゾンビなどのモブを使用する

 - メリット
      - 簡単
 - デメリット
      - 当たり判定が発生してしまう

#### 2. 防具立てを使ったままズレを軽減させる

 - メリット
      - 当たり判定を消せる
      - Z方向の回転を使用できる
 - デメリット
      - 必要なエンティティや処理が増える

1の方法では使用するモブの当たり判定が発生してしまいますが、それでも問題が無ければこちらの方法を使うのが良いでしょう。ただ防具立てを透明なゾンビ等にするだけです。  
次は2の方法の詳細を解説します。


### 1-2. 防具立てを使ったままズレを軽減させる方法

位置のズレ、回転のズレの2種類のズレを考えます。

#### 位置のズレ
___
位置のズレの軽減方法は、防具立てをAreaEffectCloud(以下"AEC"と呼ぶ)に乗せることです。  
Twitterで「防具立てをAECに乗せて特定のnbtを更新すると、位置ズレが軽減できる」という情報を見かけました。(自分の知る限りCommanderRedstoneさんが発信していた情報です。もし間違えていたら申し訳ございません。)この方法を使って位置ズレの軽減を試みます。

召喚時のコマンドを  
`/summon minecraft:armor_stand ~ ~ ~ {~}`  
↓  
`/summon minecraft:area_effect_cloud ~ ~ ~ {Passenger:[{id:"minecraft:armor_stand",~}]}`  

のように変更します。また、1章の2でのtp部分を、防具立てではなく下のAECに対して行うように変更します。  
その後に各パーツのAECのRotationにスコアボードの値を代入します。

    execute store result entity <下のAEC> Rotation[0] float 1 run scoreboard players get <上の防具立て> ry_global
    execute store result entity <下のAEC> Rotation[1] float 1 run scoreboard players get <上の防具立て> rx_global

これらの変更を行えば、かなり位置ズレが軽減されます。


#### 回転のズレ
___
続いて、回転のズレの軽減です。こちらは、「nbtのRotationよりもPoseの方がズレが少ない」ことを考慮します。  
角度スコアを防具立てのRotationに代入する代わりに、Poseに代入します。Pose[0]にrx、Pose[1]にryが対応します。

#### まとめ
___
ここまでを考慮した場合の流れは以下のようになります。

tick関数内：  
はじめにscoreboardで各パーツの絶対角度スコアを算出 (1章3)  
↓  
下のAEC: 算出したスコアをRotationに代入し、(演算上の)向きを反映させた状態でローカル座標tpでパーツの**位置**を反映させる  
上の防具立て: 算出したスコアをPoseに代入し、**(表示上の)向き**を反映させる


## Z方向の回転

防具立てのnbtのPoseには、`Pose:{Head:[10.0f,20.0f,30.0f]}`のように、3つの値が入ります。便宜上この3つをX,Y,Zの三方向の回転を呼ぶこととします。いままで出てきたZ回転という言葉は、この回転のことです。モデル表示用エンティティに防具立てを使用した場合、この方向の回転を使うことができます。  

ただし、いくつか注意点があります。

#### 注意点1
___
今の状態でZ方向に回転させても、このようにパーツの位置がズレてしまいます。nbtのRotationには2方向の回転しか無く、`/tp ^ ^ ^`を用いてこの回転を表現することができないためです。  

どうしてもZ方向の回転を実装したい場合、回転した角度に応じて`tp ^x ^y ^z`のx,yの値を調整する必要があります。  

ここで、整理するために`tp ^x ^y ^z`と`Pose:{Head:[rx,ry,rz]}`の方向を表した図を作りました。

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/8.png)

![demo](https://github.com/Keeema-1/CustomModelBoss/blob/main/materials/9.png)

座標`[x,y]`を角度`Δrz`だけ回転させた座標は、

    [x',y']=[x*cos(-Δrz)-y*sin(-Δrz), x*sin(-Δrz)+y*cos(-Δrz)]

となります。

角度rzを使用したい場合、rzの値に対して分岐をして、`tp ^x ^y ^z`のx,yの値をこの計算式に沿って再計算しなければなりません。これは人力ではとても面倒なので、自分はpythonで自動化しました。  


#### 注意点2
___
**1. 防具立ての描画ズレ対策** で、回転のズレを防止するために、Rotationに代入する代わりにPoseを用いてモデルの回転を表現していました。  
この方法を使っていると、PoseのZ方向を使用した際に回転が崩れてしまいます。そのため、Z回転を使用したい場合、回転の描画ズレを諦めて通常通りRotationを使う必要があります。

つまり、
 - 回転の描画ズレを軽減する方法
 - Z方向の回転を使用する方法
この2つを両立することはできません。どちらかを使いたい場合はどちらかを捨てなければならないので、どちらを優先するか考えて実装しなければなりません。
