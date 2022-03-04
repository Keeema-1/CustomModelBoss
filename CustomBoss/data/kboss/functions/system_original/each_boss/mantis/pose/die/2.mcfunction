
data modify storage kboss:temp temp set from storage kboss:pose mantis.die.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 2
scoreboard players set @e[tag=KB.RightArm3,tag=KB.Skin,tag=KB.BossCheck] kb.drx 4
scoreboard players set @e[tag=KB.LeftArm3,tag=KB.Skin,tag=KB.BossCheck] kb.drx 4
#scoreboard players set @e[tag=KB.,tag=KB.Skin,tag=KB.BossCheck] kb.drx 4
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 2
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 2

function kboss:system/each_boss/mantis/pose/common
