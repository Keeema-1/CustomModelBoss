
# →発射

function kboss:system/each_boss/matsuri/pose/spit/front/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 20

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.5
playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.9

execute positioned ^ ^2 ^4 run function kboss:system/each_boss/matsuri/action/common/launch/1
