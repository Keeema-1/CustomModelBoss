
data merge storage kboss:temp {direction:{frontside:0b}}

execute positioned ^ ^ ^-0.1 facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.1414] run data merge storage kboss:temp {direction:{frontside:1b}}
