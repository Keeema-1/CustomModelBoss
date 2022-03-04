
# AI
## Main
summon minecraft:marker ~ ~ ~ {Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Main","KB.NewSummon","PlayingMovie","KB.WillBark"]}

# 攻撃力
execute as @e[tag=KB.AI,tag=KB.NewSummon] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get $system kb.attack_damage

# スキン
## 頭
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Head"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Head,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20201}}]
## 上嘴
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.BeakUp"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.BeakUp,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20202}}]
## 下嘴
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.BeakDown"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.BeakDown,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20203}}]

## 首1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Neck1"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Neck1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20204}}]
## 首2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Neck2"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Neck2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20205}}]

## ボディ1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Body1"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Body1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20206}}]
## ボディ2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Body2"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Body2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20207}}]
## ボディ3
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Body","KB.Body3"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Body3,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20208}}]

## 左腕1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftArm1","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftArm1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20209}}]
## 左腕2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftArm2","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftArm2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20210}}]
## 左腕3
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftArm3","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftArm3,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20212}}]

## 右腕1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightArm1","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightArm1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20209}}]
## 右腕2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightArm2","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightArm2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20210}}]
## 右腕3
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightArm3","KB.Arm"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightArm3,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20211}}]

## 左脚1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftLeg1","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftLeg1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20209}}]
## 左脚2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftLeg2","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftLeg2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20210}}]
## 左脚3
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.LeftLeg3","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftLeg3,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20212}}]

## 右脚1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightLeg1","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightLeg1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20209}}]
## 右脚2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightLeg2","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightLeg2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20210}}]
## 右脚3
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.RightLeg3","KB.Leg"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightLeg3,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20211}}]

## 尻尾1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Tail1"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Tail1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20213}}]
## 尻尾2
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.Platypus","KB.Skin","KB.NewSummon","PlayingMovie","KB.Tail2"]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Tail2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20213}}]

# id
scoreboard players set $system kb.id 0
execute as @e[tag=KB.NewSummon,tag=KB.Main] run function kboss:system/summon/id

team join boss @e[tag=KB.NewSummon]

tag @e[tag=KB.NewSummon] add KB.BossCheck

