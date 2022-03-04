
data modify storage kboss:temp temp set from storage kboss:pose matsuri.bite.front.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 10
scoreboard players set @e[tag=KB.Arm,tag=KB.Skin,tag=KB.BossCheck] kb.drx 30
scoreboard players set @e[tag=KB.Arm,tag=KB.Skin,tag=KB.BossCheck] kb.dry 30
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 10

function kboss:system/each_boss/matsuri/pose/common
