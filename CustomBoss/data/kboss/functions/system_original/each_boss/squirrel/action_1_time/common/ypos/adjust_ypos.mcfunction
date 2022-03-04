
data merge storage kboss {space:{-1:0b,0:0b,1:0b}}

execute positioned ^ ^ ^2 positioned ~ ~1.7 ~ if block ~ ~ ~ #kboss:space if block ~ ~ ~-1 #kboss:space if block ~ ~ ~1 #kboss:space if block ~-1 ~ ~ #kboss:space if block ~1 ~ ~ #kboss:space run data merge storage kboss {space:{1:1b}}
execute positioned ^ ^ ^2 positioned ~ ~0.7 ~ if block ~ ~ ~ #kboss:space if block ~ ~ ~-1 #kboss:space if block ~ ~ ~1 #kboss:space if block ~-1 ~ ~ #kboss:space if block ~1 ~ ~ #kboss:space run data merge storage kboss {space:{0:1b}}
execute positioned ^ ^ ^2 positioned ~ ~-0.3 ~ if block ~ ~ ~ #kboss:space if block ~ ~ ~-1 #kboss:space if block ~ ~ ~1 #kboss:space if block ~-1 ~ ~ #kboss:space if block ~1 ~ ~ #kboss:space run data merge storage kboss {space:{-1:1b}}
execute positioned ^ ^ ^2 positioned ~ ~-2.3 ~ if block ~ ~ ~ #kboss:space if block ~ ~ ~-1 #kboss:space if block ~ ~ ~1 #kboss:space if block ~-1 ~ ~ #kboss:space if block ~1 ~ ~ #kboss:space run data merge storage kboss {space:{-2:1b}}

execute if data storage kboss {space:{1:0b,0:0b,-1:0b}} run tp ~ ~0.2 ~
execute if data storage kboss {space:{1:1b,0:0b,-1:0b}} run tp ~ ~0.1 ~
execute if data storage kboss {space:{0:1b,-1:1b}} run tp ~ ~-0.1 ~
execute if data storage kboss {space:{0:1b,-1:1b, -2:1b}} run tp ~ ~-0.2 ~
