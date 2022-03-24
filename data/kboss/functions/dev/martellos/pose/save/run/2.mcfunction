
execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback

tellraw @s [{"text":"ポーズ：martellos.run.2を保存しますか? "},{"text":"[保存する]","color": "light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/martellos/pose/save/run/2_sub"}}]
