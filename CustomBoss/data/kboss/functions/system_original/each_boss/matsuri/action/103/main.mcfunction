
# y座標調整

data merge storage kboss {space:{-1:0b,0:0b,1:0b}}

particle minecraft:witch ~ ~ ~ 0 0 0 1 1

execute if block ~ ~1.7 ~ #kboss:space run data merge storage kboss {space:{1:1b}}
execute if block ~ ~0.7 ~ #kboss:space run data merge storage kboss {space:{0:1b}}
execute if block ~ ~-0.3 ~ #kboss:space run data merge storage kboss {space:{-1:1b}}

execute if data storage kboss {space:{0:0b,-1:0b}} run tp ~ ~0.1 ~
execute if data storage kboss {space:{0:1b,-1:1b}} run tp ~ ~-0.1 ~

#execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action_change/table/normal

title @a actionbar [{"storage":"kboss","nbt":"space"}]
