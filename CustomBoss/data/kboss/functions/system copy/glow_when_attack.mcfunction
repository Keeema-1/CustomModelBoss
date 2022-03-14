
execute if entity @s[nbt=!{NoAI:1b}] run data merge entity @s {Glowing:1b}
execute if entity @s[nbt={NoAI:1b}] run data merge entity @s {Glowing:0b}

execute if entity @s[nbt=!{NoAI:1b}] at @s run particle witch ~ ~3 ~ 0 0 0 0 1

#execute if entity @s[nbt=!{NoAI:1b}] run effect give @s glowing 1 1 true
#execute if entity @s[nbt={NoAI:1b}] run effect clear @s glowing
