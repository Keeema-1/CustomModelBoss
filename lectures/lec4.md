# コマンドとリソパで自作モデルのボスを動かそう！  4章 防具立ての描画ズレ対策編

[メインへ](https://github.com/Keeema-1/CustomModelEntity)

[解説ホームへ](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/home.md)

## 概説

ざっくりとした流れはこんな感じです。

1. 対策方法の紹介
2. 防具立てを使ったままズレを軽減させる方法

前章では、ボスのアクションの要素を解説しました。本章では、防具立ての描画ズレの対策方法を解説します。

## 1. 対策方法の紹介

防具立てを`/tp`等で移動・回転させたとき、画面上で描画のズレが発生してしまいます。  
そこで、対策として、2つの方法を考えます。

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

1の方法では使用するモブの当たり判定が発生してしまいますが、それでも問題が無ければこちらの方法を使うのが良いでしょう。  
2の方法での工夫を具体的に紹介します。

## 2. 防具立てを使ったままズレを軽減させる方法

位置のズレ、回転のズレの2種類のズレを考えます。

##### 位置のズレ

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


##### 回転のズレ

続いて、回転のズレの軽減です。こちらは、「nbtのRotationよりもPoseの方がズレが少ない」という情報を使います。  

ここまでを考慮した場合の流れは以下のようになります。

tick関数内：  
はじめにscoreboardで各パーツの絶対角度スコアを算出 (1章3)  
↓  
下のAEC: 算出したスコアをRotationに代入し、(演算上の)向きを反映させた状態でローカル座標tpでパーツの位置を反映させる  
上の防具立て: 算出したスコアをPoseに代入し、(表示上の)向きを反映させる

___
### Next: [3章 ボスのアクションを作る編](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/lec3.md)


