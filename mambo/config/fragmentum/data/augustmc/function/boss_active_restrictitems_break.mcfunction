item replace entity @s weapon.mainhand with minecraft:air
title @s actionbar [{"text":"You cannot use this item when a player is nearby a boss.","color":"red"}]
execute at @s run playsound minecraft:block.decorated_pot.shatter player @a[distance=..10]