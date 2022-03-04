
function kboss:system/each_boss/squirrel/action/common/space/back
execute if data storage kboss:temp {space:1b} facing entity @p feet rotated ~ 0 run tp ^ ^ ^-0.05
execute if data storage kboss:temp {space:0b} facing entity @p feet rotated ~ 0 run tp ^ ^ ^

