# BlockBenchの使い方

**[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)** 

**[【戻る】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecA.md)** 

> [ブロックベンチ公式サイト](https://www.blockbench.net/)

#### プロジェクトの開始

ブロックベンチを起動すると、このような画面になります。

![11](https://user-images.githubusercontent.com/92374693/159625950-3709f5a7-6e63-40e8-827e-8fc7cf281c37.png)

Java版のブロック/アイテムのモデル用の場合、"Java Block/Item" を選択します。

___

クリックすると、次はこのような画面になります。

![12](https://user-images.githubusercontent.com/92374693/159626196-f0e6bdac-c4e0-4511-bb35-7cada134bc24.png)

こちらはファイル名、テクスチャサイズなど、プロジェクトのメタデータを設定する画面です。後で設定できるので、`cancel`で飛ばしてしまっても構いません。  

`conform`(適用)もしくは`cancel`(取り消し)をクリックすると、このウィンドウは閉じられます。

___

プロジェクトのメタデータのウィンドウを閉じると、モデリング画面に移行します。

![image](https://user-images.githubusercontent.com/92374693/159626800-547ed28f-368e-441d-8a05-26fda2413315.png)

先ほどのプロジェクトのメタデータは、左上の`File > Project` から再び編集できます。

言語を日本語にしたい場合は、`File > Preferances > Settings` で設定ウィンドウが開き、`General`タブの`Language`の項目で日本語を選択しましょう。

___

#### キューブの基本操作

右側の`Add Cube`でキューブを追加します。

![image](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/14.gif)

___

キューブは複数個追加することができます。右側のキューブのリストからキューブを選択することができます。

![image](https://user-images.githubusercontent.com/92374693/159631280-865f68a3-1c69-48df-86cc-0413ac290986.png)

___

![image](https://user-images.githubusercontent.com/92374693/159628959-c27a1ede-8e79-4cb0-887c-1139d1d3b678.png)

これらのアイコンは、モードの選択です。左から、  
`Move` : キューブの移動  
`Resize` : キューブのサイズ変更  
`Rotate` : キューブの回転  
`Pivot Tool` : キューブの回転の中心となる座標の移動  
`Vertex Snap` : 説明しづらいので割愛。あまり使わないので最初は気にしなくても良いです。

選択したキューブに対して、中心の画面でこれらの操作を行うことができます。

![image](https://user-images.githubusercontent.com/92374693/159630688-7211cd96-18ab-4921-a44b-57a171796e9d.png)

また、この欄から数値を入力して操作することもできます。

___

#### テクスチャの操作

テクスチャの管理をする場所は、左の`TEXTURES`です。  

'Import Texture'では、PCに保存されている画像をテクスチャ用画像としてインポートします。

![image](https://user-images.githubusercontent.com/92374693/159632681-e3879913-301e-494c-98a3-ea0fc4a331f3.png)

`Import Texture`をクリックするとエクスプローラーが開きます。その画面でインポートする画像を選択するのですが、その画像は既に何らかのリソースパックに入っている画像を選びましょう。  
**4. texturesとmodels**の**models**で紹介したように、モデルで使用するテクスチャ画像の情報は、リソースパックの`textures`下の場所で指定する形で記述されています。BlockBenchで作ったモデルも同様にする必要があるため、自身のリソースパックの`textures`に入っている画像からインポートしましょう。

**2. リソースパックの中身**でデフォルトのリソースパックをどこかにコピペしましたが、そこからインポートすることもできます。その場合は自身のリソースパックに入っていなくても、デフォルトリソースパックの画像を参照して使うことができます。

___

画像をインポートすると、`TEXTURES`の欄にインポートした画像が並べられます。

![image](https://user-images.githubusercontent.com/92374693/159637727-0f0601f8-5396-4acf-83a2-c218a5c46aa6.png)

キューブを右クリックしてテクスチャを選択すると、そのキューブにテクスチャが適用されます。

![image](https://user-images.githubusercontent.com/92374693/159637787-6f0d04f8-7658-481b-837c-6b8192414374.png)

左上の`UV`から、キューブの各面に対してテクスチャ画像のどの部分を適用するかを設定できます。

![image](https://user-images.githubusercontent.com/92374693/159637844-897c0202-2b44-4801-ad53-f221dc739502.png)

右上の`Paint`モードを選択すると、張り付けられたテクスチャを手書きで編集することができます。

![image](https://user-images.githubusercontent.com/92374693/159638937-a3ef316f-6116-460c-bb13-003a35068c21.png)

___

#### Displayモード

右上の`Display`モードを選択すると、手に持ったとき(三人称&一人称)・頭にかぶったとき・アイテムをドロップしたとき・額縁に設置したとき・インベントリに存在するとき、それぞれどんな位置・角度・大きさで表示されるかを調整することができます。

![image](https://user-images.githubusercontent.com/92374693/159639065-9a4dd8c8-4b60-4f16-8ea1-34dbd2bd97ba.png)

___

#### 保存

保存等をする際は、左上の`File`バーを開きます。

![image](https://user-images.githubusercontent.com/92374693/159639890-d14f2448-a8cb-46c9-8887-36305f15d091.png)

主なファイル操作を紹介します。

 - `New` : 新しいプロジェクトを開始する
 - `Open Model` : 既存のモデルを開く
 - `Export > Export Block/Item Model` : リソースパック用のjson形式でエクスポートする
 - `Save Model` : モデルを上書き保存する

___

**[【戻る】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecA.md)** 
