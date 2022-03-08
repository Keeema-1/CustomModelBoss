
data merge storage kboss:temp {space:1b}

execute positioned as @e[distance=..16,tag=KB.Skin,tag=KB.Head,tag=KB.BossCheck,limit=1] rotated ~ 0 positioned ^ ^2 ^ run function kboss:system/each_boss/platypus/action/common/space/front_sub
