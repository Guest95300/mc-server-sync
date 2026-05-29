execute if data storage augustmc:boss {active:1} run schedule function augustmc:bosses_recursive 1s

execute as @a[predicate=augustmc:boss_omen] at @s if entity @e[predicate=augustmc:mamboss,distance=..100] run attribute @s minecraft:air_drag_modifier modifier add augustmc:boss_slow 1.25 add_value
execute as @a[predicate=augustmc:boss_omen] at @s if entity @e[predicate=augustmc:mamboss,distance=..100] run attribute @s minecraft:friction_modifier modifier add augustmc:boss_slow -0.22 add_value
execute as @a[predicate=augustmc:boss_omen] at @s if entity @e[predicate=augustmc:mamboss,distance=..100] run attribute @s minecraft:generic.gravity modifier add augustmc:boss_slow 0.045 add_value
execute as @a[predicate=augustmc:boss_omen] at @s if entity @e[predicate=augustmc:mamboss,distance=..100] run attribute @s minecraft:generic.safe_fall_distance modifier add augustmc:boss_slow 3 add_value
execute as @a[predicate=augustmc:boss_omen] at @s if entity @e[predicate=augustmc:mamboss,distance=..100] run attribute @s apothic_attributes:arrow_velocity modifier add augustmc:boss_slow -0.65 add_multiplied_total
execute as @a[predicate=augustmc:boss_omen] at @s if entity @e[predicate=augustmc:mamboss,distance=..100] run attribute @s minecraft:generic.jump_strength modifier add augustmc:boss_slow 0.26 add_value
execute as @a unless predicate augustmc:boss_omen run attribute @s minecraft:air_drag_modifier modifier remove augustmc:boss_slow
execute as @a unless predicate augustmc:boss_omen run attribute @s minecraft:friction_modifier modifier remove augustmc:boss_slow
execute as @a unless predicate augustmc:boss_omen run attribute @s minecraft:generic.gravity modifier remove augustmc:boss_slow
execute as @a unless predicate augustmc:boss_omen run attribute @s minecraft:generic.safe_fall_distance modifier remove augustmc:boss_slow
execute as @a unless predicate augustmc:boss_omen run attribute @s apothic_attributes:arrow_velocity modifier remove augustmc:boss_slow
execute as @a unless predicate augustmc:boss_omen run attribute @s minecraft:generic.jump_strength modifier remove augustmc:boss_slow
execute as @e[predicate=augustmc:mamboss] store result score @s bossHP run data get entity @s Health 1

execute as @e[type=mowziesmobs:ferrous_wroughtnaut] run scoreboard players add @s wroughtnaut_special 1
function augustmc:wroughtnaut_special_check with storage augustmc:random

execute as @e[type=bosses_of_mass_destruction:void_blossom] at @s positioned ~-30 ~5 ~30 run target @s @a[dx=60,dz=-60,dy=15,sort=random,limit=1,gamemode=!spectator,gamemode=!creative]
execute as @e[type=bosses_of_mass_destruction:void_blossom] at @s positioned ~-30 ~6 ~30 if entity @a[dx=60,dz=-60,dy=15] run cast @s root
execute as @e[type=bosses_of_mass_destruction:void_blossom] at @s run effect give @a[distance=..100] irons_spellbooks:blight

execute as @e[type=block_factorys_bosses:infernal_dragon] store result score @s yharon_phase run data get entity @s BossPhase 1
execute as @e[type=block_factorys_bosses:infernal_dragon] run scoreboard players add @s yharon_attack 1
execute as @e[type=block_factorys_bosses:infernal_dragon] if score @s yharon_phase matches 3..5 run scoreboard players add @s yharon_attack 1
function augustmc:yharon_attack_check with storage augustmc:random

execute as @e[type=terra_entity:tomb_crawler] run target @s @a[distance=..50,sort=random,limit=1,gamemode=!spectator,gamemode=!creative]
execute as @e[type=terra_entity:giant_worm] run target @s @a[distance=..50,sort=random,limit=1,gamemode=!spectator,gamemode=!creative]