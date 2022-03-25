
execute if entity @s[nbt=!{NoAI:1b}] run effect give @s glowing 1 1 true
execute if entity @s[nbt={NoAI:1b}] run effect clear @s glowing
