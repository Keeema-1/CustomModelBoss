
data modify storage kboss:temp temp set from storage kboss:pose matsuri.punch.right.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 10

function kboss:system/each_boss/matsuri/pose/common_reverse
