
# Main
summon minecraft:marker ~ ~ ~ {Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Main","KB.NewSummon","PlayingMovie"]}

# スキン

## ボディ2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Body2"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Body2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20307}}]
## ボディ1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Body1"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Body1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20306}}]

## 首1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Neck1"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Neck1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20304}}]
## 首2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Neck2"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Neck2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20305}}]
## 頭
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.Head"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Head,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20301}}]

## 左腕1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftArm1","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftArm1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20309}}]

## 右腕1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightArm1","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightArm1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20309}}]

## 左脚1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftLeg1","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftLeg1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20311}}]

## 右脚1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightLeg1","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightLeg1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20311}}]

## 尻尾1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","PlayingMovie","KB.Tail1"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Tail1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20313}}]

# id
scoreboard players set $system kb.id 0
execute as @e[tag=KB.NewSummon,tag=KB.Main] run function kboss:system/summon/id


team join boss @e[tag=KB.NewSummon]

tag @e[tag=KB.NewSummon] remove KB.NewSummon
