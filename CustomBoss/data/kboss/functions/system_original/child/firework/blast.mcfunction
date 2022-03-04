
data merge storage kboss:temp {check:1b}

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

# Type 0b:小玉, 1b: 大玉, 4b: 破裂
execute if score @s kb.temp matches 0 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;3932415]}],Flight:1}}},LifeTime:0}
execute if score @s kb.temp matches 1 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;16711680]}],Flight:1}}},LifeTime:0}
execute if score @s kb.temp matches 2 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;16751872]}],Flight:1}}},LifeTime:0}
execute if score @s kb.temp matches 3 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16514816]}],Flight:1}}},LifeTime:0}
execute if score @s kb.temp matches 4 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;61183]}],Flight:1}}},LifeTime:0}
execute if score @s kb.temp matches 5 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16732415]}],Flight:1}}},LifeTime:0}
execute if score @s kb.temp matches 6 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Colors:[I;65344]}],Flight:1}}},LifeTime:0}
execute if score @s kb.temp matches 7 run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Colors:[I;12189929]}],Flight:1}}},LifeTime:0}

tp @s ~ -200 ~
kill @s
kill @e[distance=..4,tag=KB.BulletSkin,tag=KB.Firework,sort=nearest,limit=1]

execute as @e[tag=KB.Firework,tag=KB.Mine,distance=..8] run function kboss:system/child/firework/mine/trigger
