
function kboss:system/each_boss/squirrel/action/common/space/front

execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 32..40 run tp ^ ^ ^0.025

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/2/finish
