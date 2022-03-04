
execute as @e[type=#hapuru:target,tag=!HB.Hapurubokka,limit=1,sort=nearest] run tag @s add HB.Target

data merge storage hapuru {Check:1b}
