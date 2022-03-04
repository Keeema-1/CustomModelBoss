
data modify storage kboss:temp temp set from storage kboss:pose platypus.run.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 4

scoreboard players set @e[tag=KB.Skin,tag=KB.Arm,tag=KB.BossCheck] kb.drx 40
scoreboard players set @e[tag=KB.Skin,tag=KB.Arm,tag=KB.BossCheck] kb.dry 40
scoreboard players set @e[tag=KB.Skin,tag=KB.LeftArm1,tag=KB.BossCheck] kb.drx 60
scoreboard players set @e[tag=KB.Skin,tag=KB.LeftArm1,tag=KB.BossCheck] kb.dry 60

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 40

function kboss:system/each_boss/platypus/pose/common_reverse
