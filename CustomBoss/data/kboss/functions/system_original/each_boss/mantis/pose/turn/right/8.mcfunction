
data modify storage kboss:temp temp set from storage kboss:pose mantis.turn.right.1

scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drx 7
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.dry 7
scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drz 7

data modify storage kboss:temp temp.FrontLeftLeg1.ry set value -40
data modify storage kboss:temp temp.BackRightLeg1.ry set value 140

function kboss:system/each_boss/mantis/pose/common_legs_reverse
