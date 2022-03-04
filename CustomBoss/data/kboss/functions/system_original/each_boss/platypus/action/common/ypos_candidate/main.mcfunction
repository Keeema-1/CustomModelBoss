
# 一か所でも0マス下が空間でない(0b)場合、↑
data merge storage kboss:temp {space:{+0:1b}}
execute as @e[distance=..16,tag=KB.Size1,tag=KB.AI,tag=KB.BossCheck] at @s if data storage kboss:temp {space:{+0:1b}} run function kboss:system/each_boss/platypus/action/common/ypos/sub1_size1
execute if data storage kboss:temp {space:{+0:1b}} as @e[distance=..16,tag=KB.Size2,tag=KB.AI,tag=KB.BossCheck] at @s if data storage kboss:temp {space:{+0:1b}} run function kboss:system/each_boss/platypus/action/common/ypos/sub1_size2
execute if data storage kboss:temp {space:{+0:0b}} run tp ~ ~0.2 ~

# 全員の下に空間がある場合、↓
data merge storage kboss:temp {space:{-0:1b}}
execute if data storage kboss:temp {space:{+0:1b}} as @e[distance=..16,tag=KB.Size1,tag=KB.AI,tag=KB.BossCheck] at @s if data storage kboss:temp {space:{-0:1b}} run function kboss:system/each_boss/platypus/action/common/ypos/sub2_size1
execute if data storage kboss:temp {space:{+0:1b,-0:1b}} as @e[distance=..16,tag=KB.Size2,tag=KB.AI,tag=KB.BossCheck] at @s if data storage kboss:temp {space:{-0:1b}} run function kboss:system/each_boss/platypus/action/common/ypos/sub2_size2
execute if data storage kboss:temp {space:{-0:1b,+0:1b}} run tp ~ ~-0.05 ~

