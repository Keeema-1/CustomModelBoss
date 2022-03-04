
# Main
summon minecraft:marker ~ ~ ~ {Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Main","KB.NewSummon","KB.WillBark"]}
# AI
## 頭
summon minecraft:slime ~ ~-3 ~ {CustomName:'"スクルスヘッド"',Size:1,NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["KB.Size1","KB.Normal","KB.Boss","KB.BigSquirrel","KB.Head","KB.AI","KB.NewSummon"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.attack_knockback",Base:1.0d},{Name:"minecraft:generic.max_health",Base:1024.0d},{Name:"minecraft:generic.armor",Base:0.0d}],Health:1024.0f,ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5},{id:"minecraft:blast_protection",lvl:10}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{Amount:0.0d,AttributeName:"minecraft:generic.attack_damage"}]}},{}]}
## ボディ
summon minecraft:slime ~ ~-3 ~ {CustomName:'"スクルスヘッド"',Size:2,NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["KB.Size2","KB.Normal","KB.Boss","KB.BigSquirrel","KB.Body","KB.Body1","KB.AI","KB.NewSummon"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.attack_knockback",Base:1.0d},{Name:"minecraft:generic.max_health",Base:1024.0d},{Name:"minecraft:generic.armor",Base:10.0d}],Health:1024.0f,ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5},{id:"minecraft:blast_protection",lvl:10}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{Amount:0.0d,AttributeName:"minecraft:generic.attack_damage"}]}},{}]}
summon minecraft:slime ~ ~-3 ~ {CustomName:'"スクルスヘッド"',Size:3,NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["KB.Size3","KB.Normal","KB.Boss","KB.BigSquirrel","KB.Body","KB.Body2","KB.AI","KB.NewSummon"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.attack_knockback",Base:1.0d},{Name:"minecraft:generic.max_health",Base:1024.0d},{Name:"minecraft:generic.armor",Base:10.0d}],Health:1024.0f,ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5},{id:"minecraft:blast_protection",lvl:10}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{Amount:0.0d,AttributeName:"minecraft:generic.attack_damage"}]}},{}]}
## 尻尾
summon minecraft:slime ~ ~-3 ~ {CustomName:'"スクルスヘッド"',Size:2,NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["KB.Size2","KB.Normal","KB.Boss","KB.BigSquirrel","KB.Tail","KB.AI","KB.NewSummon"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.attack_knockback",Base:1.0d},{Name:"minecraft:generic.max_health",Base:1024.0d},{Name:"minecraft:generic.armor",Base:10.0d}],Health:1024.0f,ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5},{id:"minecraft:blast_protection",lvl:10}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{Amount:0.0d,AttributeName:"minecraft:generic.attack_damage"}]}},{}]}

effect give @e[tag=KB.NewSummon] invisibility 1000000 0 true

# 攻撃力
execute as @e[tag=KB.AI,tag=KB.NewSummon] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get $system kb.attack_damage

# スキン


## ボディ2
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.Body","KB.Body2"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.Body","KB.Body2"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Body2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20307}}]
## ボディ1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.Body","KB.Body1"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.Body","KB.Body1"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Body1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20306}}]

## 首1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.Body","KB.Neck1"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.Body","KB.Neck1"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Neck1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20304}}]
## 首2
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.Body","KB.Neck2"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.Body","KB.Neck2"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Neck2,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20305}}]
## 頭
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.Head"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.Head"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Head,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20301}}]

## 左腕1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.LeftArm1","KB.Arm"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.LeftArm1","KB.Arm"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftArm1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20309}}]

## 右腕1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.RightArm1","KB.Arm"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.RightArm1","KB.Arm"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightArm1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20309}}]

## 左脚1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.LeftLeg1","KB.Leg"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.LeftLeg1","KB.Leg"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.LeftLeg1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20311}}]

## 右脚1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.RightLeg1","KB.Leg"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.RightLeg1","KB.Leg"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.RightLeg1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20311}}]

## 尻尾1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.SkinPos","KB.NewSummon","KB.Tail1"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["KB.Normal","KB.Boss","KB.BigSquirrel","KB.Skin","KB.NewSummon","KB.Tail1"]}]}
data modify entity @e[tag=KB.NewSummon,tag=KB.Skin,tag=KB.Tail1,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20313}}]

# id
scoreboard players set $system kb.id 0
execute as @e[tag=KB.NewSummon,tag=KB.Main] run function kboss:system/summon/id

# ステータス
scoreboard players operation @e[tag=KB.NewSummon] kb.attack_damage = $system kb.attack_damage
scoreboard players operation @e[tag=KB.NewSummon,tag=KB.Main] kb.max_health = $system kb.max_health
scoreboard players operation @e[tag=KB.NewSummon,tag=KB.Main] kb.last_angry_health = $system kb.max_health
scoreboard players operation @e[tag=KB.NewSummon,tag=KB.Main] kb.angry_time = $system kb.angry_time

execute as @e[tag=KB.NewSummon,tag=KB.AI] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @e[distance=..1,tag=KB.Main,tag=KB.NewSummon,limit=1] kb.attack_damage

execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run bossbar set kboss:health/1 visible true
#execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run bossbar set kboss:health/1 players @a
execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run bossbar set kboss:health/1 name "スクルスヘッド"
execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run execute store result bossbar kboss:health/1 max run scoreboard players get @e[tag=KB.Main,tag=KB.NewSummon,limit=1] kb.max_health

execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=2}] run bossbar set kboss:health/2 visible true
#execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=2}] run bossbar set kboss:health/2 players @a
execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=2}] run bossbar set kboss:health/2 name "スクルスヘッド"
execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=2}] run execute store result bossbar kboss:health/2 max run scoreboard players get @e[tag=KB.Main,tag=KB.NewSummon,limit=1] kb.max_health

execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=3}] run bossbar set kboss:health/3 visible true
#execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=3}] run bossbar set kboss:health/3 players @a
execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=3}] run bossbar set kboss:health/3 name "スクルスヘッド"
execute if entity @e[tag=KB.Main,tag=KB.NewSummon,scores={kb.id=3}] run execute store result bossbar kboss:health/3 max run scoreboard players get @e[tag=KB.Main,tag=KB.NewSummon,limit=1] kb.max_health

team join boss @e[tag=KB.NewSummon]

tag @e[tag=KB.NewSummon] add KB.BossCheck

