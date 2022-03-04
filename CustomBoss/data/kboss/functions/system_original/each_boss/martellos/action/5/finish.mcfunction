
execute if entity @a[distance=..4] run function kboss:system/each_boss/martellos/action/5/finish/very_near
execute unless entity @a[distance=..4] if entity @a[distance=..8] run function kboss:system/each_boss/martellos/action/5/finish/near
execute unless entity @a[distance=..8] run function kboss:system/each_boss/martellos/action/5/finish/far
