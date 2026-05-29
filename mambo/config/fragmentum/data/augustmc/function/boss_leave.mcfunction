execute as @a[gamemode=spectator] run gamemode survival @s
data modify storage augustmc:boss active set value 0
execute as @a run title @s times 5t 2s 5t
execute as @a run title @s actionbar ["All players have left the boss domain."]
execute as @a run title @s reset

execute as @a run attribute @s minecraft:air_drag_modifier modifier remove augustmc:boss_slow
execute as @a run attribute @s minecraft:friction_modifier modifier remove augustmc:boss_slow
execute as @a run attribute @s minecraft:generic.gravity modifier remove augustmc:boss_slow
execute as @a run attribute @s minecraft:generic.safe_fall_distance modifier remove augustmc:boss_slow
execute as @a run attribute @s apothic_attributes:arrow_velocity modifier remove augustmc:boss_slow
execute as @a run attribute @s minecraft:generic.jump_strength modifier remove augustmc:boss_slow

execute as @e[predicate=augustmc:mamboss] run data merge entity @s {Health:99999.0f}

execute at @a[predicate=augustmc:boss_omen] run playsound minecraft:item.trident.thunder