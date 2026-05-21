# Give the item to the player
give @s worldspawn:world_spawner 1

# Notify the player
tellraw @s ["",{"text":"[Give Spawn] ","color":"green"},{"text":"You received the ","color":"white"},{"text":"World Spawn","color":"aqua"},{"text":"!","color":"white"}]

# Play a sound for feedback
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1
