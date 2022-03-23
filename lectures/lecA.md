# 自作モデルをマイクラ上で表示する方法

## 目次

1. リソースパックとは
2. リソースパックの中身
3. リソースパックのフォーマット
4. modelsとtextures
5. 3Dモデルの作成
6. CustomModelData


## 1. リソースパックとは

リソースパック(以下リソパとも呼ぶ)とは、マイクラが使っているリソースを詰め込んだものです。例えばブロックやモブなどのテクスチャや、アイテムやブロックなどの形、サウンドなど、様々なリソースが入っています。設定の"リソースパック"を見てみると、マイクラのデフォルトのリソースパックが使われていることが分かります。この場所に他のリソースパックを入れることで、ブロックやモブのテクスチャを変えたりすることができます。

## 2. リソースパックの中身

さて、リソースパックの中身はどうなっているのでしょうか。マイクラのデフォルトのリソースパックの中身を見てみましょう。
1. `.minecraft`フォルダを開きます。(場所が分からない人へ：設定→リソースパック→パックフォルダーを開く で開いたフォルダが`.minecraft/resourcepacks`です)
2. `.minecraft/versions/(任意のバージョン)/~.jar` のファイルをコピーし、好きな場所にペーストします。
3. そのファイルをクリックして、"名前を変更"で拡張子を「.jar」→「.zip」に変更します。
4. 「.zip」にしたファイルを「すべて展開」します。
5. 展開したファイルの中のassets/minecraftの場所にある色々なものが、リソースパックの中身に該当します。

自分でリソースパックを作りたい時は、このデフォルトのフォーマットになぞらえて構成する必要があります。

**※注意※**  
Minecraftのデフォルトリソースパックの中身は、あくまで参考にするため or 場所を参照するために使用しましょう。デフォルトリソースパックの中の画像をそのまま再配布してしまうのは、(自分の知る限り)許可されている訳ではないと思うのでやめておきましょう。わざわざ何かを言われるなんてことは無いでしょうが、人の画像を勝手に再配布するのは倫理的にアレっぽい気がするので…。~(使わなくて済むなら使わないに越したことはないですが、やりたいことの為に都合上どうしても使いたい、って時もあります。あんまりここを人に厳しくしすぎるのも野暮ったいかもね。)~(あとあくまで素人の個人的意見なので、今言ったことが本当に正しいとは言い切れません。自己責任でお願いします。)

## 3. リソースパックのフォーマット

リソースパックを導入する方法は、パックフォルダー([ここ](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/lecA.md#:~:text=%E8%A8%AD%E5%AE%9A%E2%86%92%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%91%E3%83%83%E3%82%AF%E2%86%92%E3%83%91%E3%83%83%E3%82%AF%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80%E3%83%BC%E3%82%92%E9%96%8B%E3%81%8F%20%E3%81%A7%E9%96%8B%E3%81%84%E3%81%9F%E3%83%95%E3%82%A9%E3%83%AB%E3%83%80))に導入したいリソースパックフォルダーを入れるだけです。リソースパックはファイルフォルダー形式か圧縮zipフォルダー形式である必要があります。。

参考：[Minecraft Wiki : リソースパック](https://minecraft.fandom.com/ja/wiki/%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%91%E3%83%83%E3%82%AF#:~:text=X-,%E6%8C%AF%E3%82%8B%E8%88%9E%E3%81%84,-%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%91%E3%83%83%E3%82%AF%E3%81%AE)

___

リソースパックフォルダーは、以下のような構成である必要があります。

    リソースパック名フォルダ  
    | - pack.mcmeta  ← リソースパックの基本情報を書くファイル(必須)  
    | - pack.png  ← リソースパックのアイコン用の画像ファイル(無くてもOK)  
    | - assets  ← このフォルダ内にいろいろなリソースを入れる  
        | - models  
        | - textures  
        | - ...
        

 - ![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/10.png)リソースパック名  
     - pack.mcmeta  ← リソースパックの基本情報を書くファイル(必須)  
     - pack.png  ← リソースパックのアイコン用の画像ファイル(無くてもOK)  
     - ![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/10.png)assets  ← このフォルダないにいろいろなリソースを入れる  
         - ![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/10.png)models  
         - ![demo](https://github.com/Keeema-1/CustomModelEntity/blob/main/materials/10.png)textures  
         - ...



参考：[Minecraft Japan Wiki : リソースパック/作り方](https://minecraftjapan.miraheze.org/wiki/%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%91%E3%83%83%E3%82%AF/%E4%BD%9C%E3%82%8A%E6%96%B9#:~:text=%E3%82%88%E3%81%84%E3%81%A7%E3%81%97%E3%82%87%E3%81%86%E3%80%82-,%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%91%E3%83%83%E3%82%AF%E3%81%AE%E5%9F%BA%E6%9C%AC%E7%9A%84%E6%A7%8B%E9%80%A0,-%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%91%E3%83%83%E3%82%AF%E3%81%AF)

___

`pack.mcmeta`の中身はこのようなフォーマットで書く必要があります。

    {
      "pack": {
        "pack_format": 8,
        "description": "ここにリソースパックの説明文を書きます"
      }
    }

`pack_format`は使用するMinecraftのバージョンによって対応した数字を書く必要があります。今回はVer.1.18を想定しているため、そのバージョンに対応した数字の8としています。

参考：[Minecraft Wiki : リソースパック](https://minecraft.fandom.com/ja/wiki/%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%91%E3%83%83%E3%82%AF#:~:text=%E8%A1%A8%E7%A4%BA%E3%81%95%E3%82%8C%E3%82%8B%E3%80%82-,%E3%83%91%E3%83%83%E3%82%AF%E3%83%95%E3%82%A9%E3%83%BC%E3%83%9E%E3%83%83%E3%83%88,-%E6%AC%A1%E3%81%AE%E8%A1%A8)

___

assetsの中に、**2.リソースパックの中身**で紹介したデフォルトリソパと同じ構成でアセットを入れます。models, textures, ... と様々なアセットの種類がありますが、すべてそろっている必要はありません。

## 4. texturesとmodels

先ほど紹介したように、リソースパックに入れられるアセットには、models, texturesなど、色々な要素があります。今回はmodelsとtexturesのみを使うので、これらについて具体例を混ぜて解説します。

### textures

texturesの中にはブロックやモブ、アイテムなど、マイクラで使われるテクスチャ画像が入っています。例えばtextures/blocksフォルダ内のstone.pngは石ブロックのテクスチャが該当しますが、その場所にstone.png という名前の別の画像を置くと、石ブロックの見た目を変更することができます。このように、何かのテクスチャを変えたい場合は、デフォルトリソパにある変更したいテクスチャ画像と対応した場所に、同じ名前の画像を置く必要があります。  
では、実際に「石の画像だけを変更するリソースパック」の例を示します。

    ChangeStoneTexture ← リソースパック名  
    | - pack.mcmeta  
    | - assets  
        | - textures  
            | - blocks  
                | - stone.png  ← 石のテクスチャにしたい画像を入れる  

pack.mcmetaの中身：

    {
      "pack": {
        "pack_format": 8,
        "description": "石のテクスチャを変更するリソースパック"
      }
    }

これをリソースパックフォルダ内に入れて、このリソースパックを選択してみます。
1. マイクラの`設定 > リソースパックの選択 > パックフォルダーを開く`でパックフォルダーを開き、ChangeStoneTextureフォルダをそのフォルダーに入れます。
2. マイクラの画面に戻り、リソースパックの選択画面にChangeStoneTextureが「利用可能」にあるのを確認します。  
3. 利用可能欄で▷をクリックして、「選択中」に入れます。

>※注意※：リソースパックの優先順位
>「選択中」のリソースパックが複数個あるとき、リストの上のものが優先されます。
>この優先順位に従って、石の画像だけは自作リソパから適用され、他は自作リソパには無いのでデフォルトリソパから適用される状態です。

>マイクラをプレイ中にリソースパックフォルダー内のファイルを変更した場合、`F3`+`T`の同時押しでリソースパックをリロードし、マイクラ上で反映させることができます。

### models 

modelsの中にはアイテムやブロックの形、そしてどの面にどのテクスチャを貼り付けるか等の情報が入れられます。ちなみに、モブの形を変更することはできません。一例として`models/items/apple.json`の中身を覗いてみましょう。

    {
      "parent": "minecraft:item/generated",
      "textures": {
        "layer0": "minecraft:item/apple"
      }
    }

`textures`はそのモデルに使用するテクスチャの場所と名前を表しています。リソースパックの`textures`下の場所を表していて、この場合は`textures/item/stick.png`が参照されます。  
`parent`はモデルの親となるファイルの場所を示してます。指定されたファイルに、どのような形のモデルがどのような大きさ/角度で表示されるか、の情報が入っています。続いて、`models/items/stick.json`の中身を覗いてみましょう。

    {
      "parent": "minecraft:item/handheld",
      "textures": {
        "layer0": "minecraft:item/stick"
      }
    }

リンゴの`parent`は`generated`、棒の`parent`は`handheld`となっています。これらの違いは、手に持った時に`handheld`だと剣のように持つ、ということです。
`models/item/generated`, `models/item/handheld` には、それぞれどのような形で、どのような大きさ/角度で表示されるのか、の情報が記述されています。

`parent`を指定せず、他の情報をそのまま書くこともできます。一例として`models/block/cake.json`の中身を見てみます。

    {
        "textures": {
            "particle": "block/cake_side",
            "bottom": "block/cake_bottom",
            "top": "block/cake_top",
            "side": "block/cake_side"
        },
        "elements": [
            {   "from": [ 1, 0, 1 ],
                "to": [ 15, 8, 15 ],
                "faces": {
                    "down":  { "texture": "#bottom", "cullface": "down" },
                    "up":    { "texture": "#top" },
                    "north": { "texture": "#side" },
                    "south": { "texture": "#side" },
                    "west":  { "texture": "#side" },
                    "east":  { "texture": "#side" }
                }
            }
        ]
    }

`elements`には、モデルを構成するキューブの頂点座標`"from","to"`と、各面に張り付けるテクスチャの画像の情報`"faces"`が書かれています。

このようにモデルを記述すれば、自作のモデルを使用することができます。と言っても自分で形を打ち込んでモデリングをするのは現実的ではないので、モデリングソフトを使ってモデリングすると良いでしょう。(次節で解説します。)

## 5. 3Dモデルの作成

前節では、アイテムやブロックのモデルの形を変更できることを解説しました。本節では、モデリングソフトを使って実際に棒のモデルを自作してみます。

### BlockBench

ここで、BlockBenchというモデリングソフトを導入します。このソフトは、リソパ用のモデルを作成するのに適したソフトで、作ったモデルをアイテム/ブロックモデル用のjsonファイルとして出力することができます。

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

`Import Texture`をクリックするとエクスプローラーが開きます。その画面でインポートする画像を選択するのですが、その画像は既に何らかのリソースパックに入っているの画像を選びましょう。  
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

### 出力したモデルの確認

出力したファイルを`models/item/stick.json`として保存して、リソースパックを適用してみましょう。棒のモデルが保存したモデルに変更されれば成功です。


## 6. CustomModelData

前節までで、アイテムのモデルを変更する方法を解説しました。  
開設した方法では既存のモデルを上書きしてしまい、使いたいモデルの数だけ既存のアイテムを犠牲にしてしまいます。

そこで、CustomModelDataという機能を使えば、既存のアイテムのモデルを残したまま他のモデルを追加することができます。

棒のモデルを残したまま自作モデルをCustomModelDataとして追加するリソースパックのサンプルは下のようになります。

    Sample ← リソースパック名  
    | - pack.mcmeta  
    | - assets  
        | - models
            | - item
                | - stick.json
                | - custom
                    | - stick
                        | - 1.json  ← 自作モデル1
                        | - 2.json  ← 自作モデル2

自作モデルを複数個作り、`models`下の好きな場所に置きます。分かりやすいように、上の場所に置いたとして解説します。

`stick.json`の中身：

    {
      "parent": "minecraft:item/handheld",
      "textures": {
        "layer0": "minecraft:item/stick"
      },
      "overrides": [
        {
          "predicate": {"custom_model_data":1}, 
          "model": "minecraft:item/custom/stick/1"
        },{
          "predicate": {"custom_model_data":2}, 
          "model": "minecraft:item/custom/stick/2"
        }
      ]
    }

このように既存のモデル情報に`overrides`を追加します。  
`predicate`で`custom_model_data`の数字を決め、`model`で参照する他のモデルを指定します。例えばここを`minecraft:item/apple`にすると、リンゴのモデルを参照することもできます。

このサンプルリソースパックを適用した場合、棒のモデルは既存のモデルのままです。コマンド`/give @s minecraft:stick{CustomModelData:1}`を実行すると、モデルが自作モデル1のものに変更されます。  
このように`CustomModelData`を用いることで、既存のモデルを潰すことなくコマンドと連携してモデルを追加することができます。  
もちろん`/give @s minecraft:stick{CustomModelData:2}`を実行すると、モデルが自作モデル2に変更されます。

## まとめ

リソースパックの適用 F3+T
フォーマット
