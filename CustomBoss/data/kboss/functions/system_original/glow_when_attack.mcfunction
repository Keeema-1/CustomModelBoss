
execute if entity @s[nbt=!{NoAI:1b}] run data merge entity @s {Glowing:1b}
execute if entity @s[nbt={NoAI:1b}] run data merge entity @s {Glowing:0b}
