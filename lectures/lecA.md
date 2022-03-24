# 自作モデルをマイクラ上で表示する方法

**[【メインへ】](https://github.com/Keeema-1/CustomModelBoss)**

 - **[【解説ホームへ】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/home.md)** 
     - **[【1章 ボスを動かす編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec1.md)**
         - **自作モデルをマイクラ上で表示する方法 ← Here**
             - **[【BlockBenchの使い方】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lecB.md)**
         - **[【1章までのサンプルデータパック】](https://github.com/Keeema-1/CustomModelBoss/blob/sample1/README.md)**
     - **[【2章 ボスのHPを設定する編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec2.md)**
     - **[【3章 アクションを作る編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec3.md)**
     - **[【4章 手直し編】](https://github.com/Keeema-1/CustomModelBoss/blob/main/lectures/lec4.md)**
         - **[【ボス完成品のサンプルデータパック】](https://github.com/Keeema-1/CustomModelBoss/blob/sample2/README.md)**

## 目次

1. リソースパックとは
2. リソースパックの中身
3. リソースパックのフォーマット
4. modelsとtextures
5. 3Dモデルの作成 → **[【BlockBenchの使い方】](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/lecB.md)**
6. CustomModelData


## 1. リソースパックとは

リソースパック(以下リソパとも呼ぶ)とは、マイクラが使っているリソースを詰め込んだものです。例えばブロックやモブなどのテクスチャや、アイテムやブロックなどの形、サウンドなど、様々なリソースが入っています。設定の"リソースパック"を見てみると、マイクラのデフォルトのリソースパックが使われていることが分かります。この場所に他のリソースパックを入れることで、ブロックやモブのテクスチャを変えたりすることができます。

## 2. リソースパックの中身

さて、リソースパックの中身はどうなっているのでしょうか。マイクラのデフォルトのリソースパックの中身を見てみましょう。
1. `.minecraft`フォルダを開きます。(場所が分からない人へ：設定→リソースパック→パックフォルダーを開く で開いたフォルダが`.minecraft/resourcepacks`なので、そこの上の場所です。)
2. `.minecraft/versions/(任意のバージョン)/~.jar` のファイルをコピーし、好きな場所にペーストします。
3. そのファイルをクリックして、"名前を変更"で拡張子を「.jar」→「.zip」に変更します。
4. 「.zip」にしたファイルを「すべて展開」します。
5. 展開したファイルの中のassets/minecraftの場所にある色々なものが、リソースパックの中身に該当します。

自分でリソースパックを作りたい時は、このデフォルトのフォーマットになぞらえて構成する必要があります。

**※注意※**  
Minecraftのデフォルトリソースパックの中身は、あくまで参考にするため or 場所を参照するために使用しましょう。デフォルトリソースパックの中の画像をそのまま再配布してしまうのは、(自分の知る限り)許可されている訳ではないと思うのでやめておきましょう。わざわざ何かを言われるなんてことは無いでしょうが、人の画像を勝手に再配布するのは倫理的にアレっぽい気がするので…。~(使わなくて済むならもちろん使わないべきですが、やりたいことの為に都合上どうしても使いたい、って時もあるかもしれません。あんまりここを人に厳しくしすぎるのも野暮ったいかもね。)~(あくまで素人の個人的意見なので、自己責任でお願いします。)

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

参考：[Minecraft Wiki : pack_format](https://minecraft.fandom.com/wiki/Pack_format)

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

`textures`はそのモデルに使用するテクスチャ画像の場所と名前を表しています。リソースパックの`textures`下の場所を表していて、この場合は`textures/item`フォルダにある`apple.png`が参照されます。  
`parent`はモデルの親となるファイルの場所を示しています。指定されたファイルに、どのような形のモデルがどのような大きさ/角度で表示されるか、の情報が入っています。続いて、`models/items/stick.json`の中身を覗いてみましょう。

    {
      "parent": "minecraft:item/handheld",
      "textures": {
        "layer0": "minecraft:item/stick"
      }
    }

リンゴの`parent`は`generated`、棒の`parent`は`handheld`となっています。これらの違いは、`handheld`だと手に持った時に剣のように立てて持つ、というものです。
`models/item/generated.json`, `models/item/handheld.json` には、どのような形のモデルで、どのような大きさ/角度で表示されるのか、の情報が記述されています。

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

ここで、BlockBenchというモデリングソフトを導入します。このソフトは、リソパ用のモデルを作成するのに適したソフトで、作ったモデルをアイテム/ブロックモデル用のjsonファイルとして出力することができます。

BlockBenchの使い方の解説は **[【こちら】](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/lecB.md)**。

BlockBenchで作成したモデルを自作リソースパックの`models/item/stick.json`として出力して、リソースパックを適用してみましょう。棒のモデルがそのモデルに変更されれば成功です。

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

___

**[【戻る】](https://github.com/Keeema-1/CustomModelEntity/blob/main/lectures/lec1.md)**
