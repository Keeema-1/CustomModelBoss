
data merge storage kboss:temp {space:1b}

execute positioned as @e[distance=..16,tag=KB.Skin,tag=KB.Tail1,tag=KB.BossCheck,limit=1] rotated ~ 0 positioned ^ ^1.5 ^ run function kboss:system/each_boss/squirrel/action/common/space/back_sub
