
execute store result storage kboss:settings sendCommandFeedback byte 1 run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function kboss:system/sendcommandfeedback_delay 1t
