
data modify storage kboss:temp temp set from storage kboss:pose martellos.knock.right.1

scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drx 5
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.dry 5
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drz 5

function kboss:system/boss/each/martellos/pose/common

scoreboard players remove @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck,tag=KB.LeftLeg1] kb.rx_goal 40
scoreboard players add @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck,tag=KB.LeftLeg1] kb.ry_goal 20
