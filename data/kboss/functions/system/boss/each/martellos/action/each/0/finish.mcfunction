
execute if entity @s[tag=!KB.WillAngry,tag=!KB.WillTired] run function kboss:system/boss/each/martellos/action/each/0/finish_sub
#execute if entity @s[tag=!KB.WillAngry,tag=!KB.WillTired] run function kboss:system/boss/each/martellos/action/each/9/start
execute if entity @s[tag=KB.WillAngry] run function kboss:system/boss/each/martellos/action/angry/start
execute if entity @s[tag=KB.WillTired] run function kboss:system/boss/each/martellos/action/angry/finish
