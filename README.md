# カスタムモデルボスの作り方

カスタムモデルボスを

カスタムモデルをアーマースタンドの頭に装着する方法
↓
ボスモデル概説 パーツごとにモデル作成→相対tpで組み立てる→関節の設定、角度のスコア管理
↓
当たり判定エンティティの作成、ポーズの設定、アクション等 ボスにする 
Keeema — 昨日 02:38
つまりコマンドとリソースパックを使ってカスタムモデルボスを作ろう！

![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/1.gif)

こんな感じのボスを作るよ(例)
まず、どのように自作のモデルを表示しているかというと、「アイテムのモデルを自作して、防具立ての頭に装着させる」というやり方です。ここら辺の詳細は【here】で。

動画のように複数のパーツを動かす場合は、パーツの数だけモデルを作る必要があります。
さて、ここからが本題です。複数パーツを組み合わせて1つのボスモデルを作成していきます。
パーツの中で、メインとなるパーツを決めます。メインのパーツを根として、他のパーツはそこから伸びる枝のように考えます。根っこ側のパーツを親パーツ、末端側のパーツを子パーツと呼ばせてもらいます。子パーツは親パーツからの相対座標にテレポートさせます。
メインパーツを移動させて、他のパーツが正しく付いてくるか確かめましょう。

これで一気にらしくなりましたね！次は関節を設定して、パーツの角度を変えられるよるにします。

パーツの角度を制御するには、nbtのRotationを用います。簡単に言うと、動かしたい角度だけRotationに加算/減算することで実現します。制御しやすくするために、スコアボードを追加します。絶対角度rx_global/ry_global、相対角度rx/ryを追加します。関節を動かしたい分だけrx/ryを設定して、それを考慮した最終的な角度をrx_global/ry_globalで計算し、Rotationに代入します。
具体的な計算方法
1つの親パーツと、それにくっついている1つの子パーツで考えてみます。前提として親パーツのrx_global/ry_globalが決まっているならば、(子パーツの絶対角度)=(親パーツの絶対角度)+(子パーツの相対角度)です。メインのパーツのrx_global/ry_globalはRotationそのままとして、それにくっ付くパーツに順番にこの計算を行い、各々の結果をRotationに代入します。この機構を作れば、相対角度rx/ryを変更すれば角度が変わるはずです。

ここまでで、パーツの角度をスコアボードで管理出来るようになりました。
次は、ポーズを保存して、保存したポーズを1コマンドでセット出来るようにします。
まずは、ポーズを設定しやすいように、チャット欄を用いてポーズ開発コマンドを作成します。こんな感じで、チャット欄をポチポチするだけでポーズを作ることができます。
続いてポーズの保存をします。ポーズはstorageに保存します。スコアボードをstorageに代入しています。
ポーズをセットする場合は、逆にstorageからスコアボードに代入します。
こんな感じでセット出来ました。

このままではポーズが一瞬で切り替わるので、滑らかに切り替わるようにします。
新しいスコアボードを追加します。目標角度rx_goal/ry_goal、角速度drx/dryです。ポーズをセットする時はrx/ryを変更するのでは無く、目標値を変更するようにします。続いて、目標値に対して角速度を加算or減算して近づいていく処理を追加します。ポーズをセットする時にこの角速度を変えることで、動きの速さが変化します。

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
