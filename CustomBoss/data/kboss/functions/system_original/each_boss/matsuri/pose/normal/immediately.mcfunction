
data modify storage kboss:temp temp set from storage kboss:pose matsuri.normal.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 100
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 100
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 100

function kboss:system/each_boss/matsuri/pose/common

tellraw @a "test"
