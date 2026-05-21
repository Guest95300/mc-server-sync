schedule function augustmc:recursive 3t

# Enable the trigger for all players so they can use it
scoreboard players enable @a get_item

# For any player who activated the trigger, run the check function
execute as @a[scores={get_item=1..}] run function augustmc:check

execute as @a if items entity @s weapon.mainhand telepass:gold_telepass run item modify entity @s weapon.mainhand augustmc:telepass
execute as @a if items entity @s weapon.mainhand telepass:diamond_telepass run item modify entity @s weapon.mainhand augustmc:telepass