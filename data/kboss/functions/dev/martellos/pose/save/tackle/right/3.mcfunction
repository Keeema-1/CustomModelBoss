
execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback

tellraw @s [{"text":"ポーズ：martellos.tackle.right.3を保存しますか? "},{"text":"[保存する]","color": "light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/martellos/pose/save/tackle/right/3_sub"}}]
