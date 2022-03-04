
#particle composter ~ ~ ~ 0 0 0 0 1

data merge storage kboss:temp {space:{+0:0b,+1:0b}}

execute if block ~-1 ~-0.11 ~-1 #kboss:space if block ~-1 ~-0.11 ~ #kboss:space if block ~-1 ~-0.11 ~1 #kboss:space if block ~ ~-0.11 ~-1 #kboss:space if block ~ ~-0.11 ~ #kboss:space if block ~ ~-0.11 ~1 #kboss:space if block ~1 ~-0.11 ~-1 #kboss:space if block ~1 ~-0.11 ~ #kboss:space if block ~1 ~-0.11 ~1 #kboss:space run tp ~ ~-0.1 ~
execute if block ~-1 ~-1.1 ~-1 #kboss:space if block ~-1 ~-1.1 ~ #kboss:space if block ~-1 ~-1.1 ~1 #kboss:space if block ~ ~-1.1 ~-1 #kboss:space if block ~ ~-1.1 ~ #kboss:space if block ~ ~-1.1 ~1 #kboss:space if block ~1 ~-1.1 ~-1 #kboss:space if block ~1 ~-1.1 ~ #kboss:space if block ~1 ~-1.1 ~1 #kboss:space run tp ~ ~-1 ~

execute if block ~-1 ~0.11 ~-1 #kboss:space if block ~-1 ~0.11 ~ #kboss:space if block ~-1 ~0.11 ~1 #kboss:space if block ~ ~0.11 ~-1 #kboss:space if block ~ ~0.11 ~ #kboss:space if block ~ ~0.11 ~1 #kboss:space if block ~1 ~0.11 ~-1 #kboss:space if block ~1 ~0.11 ~ #kboss:space if block ~1 ~0.11 ~1 #kboss:space run data merge storage kboss:temp {space:{+0:1b}}
execute if block ~-1 ~1.1 ~-1 #kboss:space if block ~-1 ~1.1 ~ #kboss:space if block ~-1 ~1.1 ~1 #kboss:space if block ~ ~1.1 ~-1 #kboss:space if block ~ ~1.1 ~ #kboss:space if block ~ ~1.1 ~1 #kboss:space if block ~1 ~1.1 ~-1 #kboss:space if block ~1 ~1.1 ~ #kboss:space if block ~1 ~1.1 ~1 #kboss:space run data merge storage kboss:temp {space:{+1:1b}}


execute if data storage kboss:temp {space:{+0:0b}} run tp ~ ~0.1 ~
execute if data storage kboss:temp {space:{+1:0b}} run tp ~ ~1 ~
