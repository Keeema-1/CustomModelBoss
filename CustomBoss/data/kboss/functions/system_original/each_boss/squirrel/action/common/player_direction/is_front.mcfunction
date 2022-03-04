
data merge storage kboss:temp {direction:{front:0b}}

# 前方
execute positioned ^ ^ ^0.1 facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=0.1999..0.21] run data merge storage kboss:temp {direction:{front:1b}}
