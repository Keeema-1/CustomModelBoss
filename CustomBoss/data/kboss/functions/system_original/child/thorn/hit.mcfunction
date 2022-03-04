
data merge storage kboss:temp {check:1b}

tp @s ~ -200 ~
kill @s
kill @e[tag=KB.BulletSkin,tag=KB.Thorn,sort=nearest,limit=1]
#kill @e[tag=KB.Bullet,tag=KB.Thorn,sort=nearest,limit=1]

particle minecraft:block minecraft:stone ~ ~1.7 ~ 0 0 0 1 20

playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.5 1
