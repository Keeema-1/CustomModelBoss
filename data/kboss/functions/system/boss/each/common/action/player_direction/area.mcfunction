
data merge storage kboss:temp {direction:{area:"right"}}

#execute positioned ^ ^ ^-0.1 facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run data merge storage kboss:temp {direction:{area:"front"}}
#execute positioned ^ ^ ^0.1 facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run data merge storage kboss:temp {direction:{area:"back"}}
#execute positioned ^-0.1 ^ ^ facing entity @a[tag=KB.SameArea,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run data merge storage kboss:temp {direction:{area:"left"}}
execute positioned ^ ^ ^-0.1 facing entity @a[sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run data merge storage kboss:temp {direction:{area:"front"}}
execute positioned ^ ^ ^0.1 facing entity @a[sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run data merge storage kboss:temp {direction:{area:"back"}}
execute positioned ^-0.1 ^ ^ facing entity @a[sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.075] run data merge storage kboss:temp {direction:{area:"left"}}

#title @a actionbar [{"storage":"kboss:temp","nbt":"direction.area"}]
