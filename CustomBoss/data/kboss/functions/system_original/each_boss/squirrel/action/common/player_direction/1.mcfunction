
data merge storage kboss:temp {check:0b}

# 2b:前方
execute positioned ^ ^ ^0.1 facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=0.1999..0.21] run data merge storage kboss:temp {check:2b}
# 1b:左 ~- ~
execute if data storage kboss:temp {check:0b} positioned ^-0.1 ^ ^ facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.1414] run data merge storage kboss:temp {check:1b}
# 0b:右 ~+ ~