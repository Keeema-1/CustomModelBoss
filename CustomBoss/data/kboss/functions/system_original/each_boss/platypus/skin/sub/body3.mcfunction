
tag @e[distance=..16,tag=KB.Body2,tag=KB.BossCheck,tag=KB.Skin,limit=1] add KB.Parent

function kboss:system/each_boss/common/skin/common

#title @a actionbar [{"text": "Parent X:"},{"score":{"name": "@e[distance=..16,tag=KB.Body2,tag=KB.BossCheck,limit=1]","objective": "kb.rx_global"}},{"text": " Y:"},{"score":{"name": "@e[distance=..16,tag=KB.Body2,tag=KB.BossCheck,limit=1]","objective": "kb.ry_global"}},{"text": "  X:"},{"score":{"name": "@s","objective": "kb.rx_global"}},{"text": " Y:"},{"score":{"name": "@s","objective": "kb.ry_global"}}]
