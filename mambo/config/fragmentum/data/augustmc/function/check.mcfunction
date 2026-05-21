# Check if the player already has the item in any inventory slot
# Uses 1.20.5+ "items entity" predicate — no item is removed

# If player does NOT have the item: give it and notify
execute unless items entity @s container.* worldspawn:world_spawner run function augustmc:give

# If player DOES have the item: notify them
execute if items entity @s container.* worldspawn:world_spawner run tellraw @s ["",{"text":"[Give Spawn] ","color":"green"},{"text":"You already have the ","color":"white"},{"text":"World Spawn","color":"aqua"},{"text":"!","color":"white"}]

# Reset the trigger score so it can be used again
scoreboard players set @s get_item 0
