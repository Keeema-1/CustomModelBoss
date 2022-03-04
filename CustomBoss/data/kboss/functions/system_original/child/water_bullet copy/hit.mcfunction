
data merge storage kboss:temp {check:1b}

tp @s ~ -200 ~
kill @s
kill @e[tag=KB.BulletSkin,tag=KB.Water,sort=nearest,limit=1]
#kill @e[tag=KB.Bullet,tag=KB.Thorn,sort=nearest,limit=1]

particle minecraft:splash ~ ~1.7 ~ 1 0 1 1 50

#playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1

summon minecraft:area_effect_cloud ~ ~1 ~ {Effects:[{Id:2b,Duration:100,Amplifier:2}],Duration:60,Radius:1.5f}
