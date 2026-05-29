schedule function augustmc:recursive 3t

# Enable the trigger for all players so they can use it
scoreboard players enable @a get_item

# For any player who activated the trigger, run the check function
execute as @a[scores={get_item=1..}] run function augustmc:check

execute as @a if items entity @s weapon.mainhand telepass:gold_telepass run item modify entity @s weapon.mainhand augustmc:telepass
execute as @a if items entity @s weapon.mainhand telepass:diamond_telepass run item modify entity @s weapon.mainhand augustmc:telepass

execute store success storage kubejs:storage restrictions.active int 1 at @a if entity @e[distance=..100,predicate=augustmc:mamboss]
execute store result score World kubejs_bosscheck run data get storage kubejs:storage restrictions.active 1
execute at @a unless entity @e[distance=..100,predicate=augustmc:mamboss] run data modify storage kubejs:storage restrictions.active set value 0


execute at @e[predicate=augustmc:mamboss] run tag @a[distance=..100] add boss_restricted_breaking
execute as @a[tag=boss_restricted_breaking,gamemode=survival] at @s if entity @e[distance=..100,predicate=augustmc:bossfight_adventuremode] run gamemode adventure @s
execute as @a[tag=boss_restricted_breaking] at @s if entity @e[distance=..100,predicate=augustmc:mamboss] run effect give @s minecraft:raid_omen 13 10 true
execute as @a[tag=boss_restricted_breaking,gamemode=!creative] at @s unless entity @e[distance=..100,predicate=augustmc:mamboss] run gamemode survival @s
execute as @a[tag=boss_restricted_breaking] at @s unless entity @e[distance=..100,predicate=augustmc:mamboss] run tag @s remove boss_restricted_breaking

execute as @e[type=touhou_little_maid:maid] if items entity @s weapon.mainhand #augustmc:confluence_boomerangs run item replace entity @s weapon.mainhand with minecraft:air

execute as @a if predicate augustmc:has_slowness run attribute @s minecraft:air_drag_modifier modifier add augustmc:slowness 1.25 add_value
execute as @a unless predicate augustmc:has_slowness run attribute @s minecraft:air_drag_modifier modifier remove augustmc:slowness



execute at @e[predicate=augustmc:mamboss] if entity @a[distance=..100] unless data storage augustmc:boss {active:1} run function augustmc:boss_enter
execute as @a[scores={boss_checkDeath=1..}] if data storage augustmc:boss {active:1} run scoreboard players remove @s boss_playerLives 1
execute as @a[scores={boss_checkDeath=1..}] run scoreboard players reset @s boss_checkDeath

execute if data storage augustmc:boss {active:1} as @a if score @s boss_playerLives matches ..0 run gamemode spectator @s

execute at @a unless entity @e[predicate=augustmc:mamboss,distance=..100] if data storage augustmc:boss {active:1} run function augustmc:boss_leave