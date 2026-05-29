execute if score @s yharon_phase matches 0..2 if score @s yharon_attacktype matches 1..20 run cast @s flaming_barrage 5
execute if score @s yharon_phase matches 0..2 if score @s yharon_attacktype matches 21..35 run cast @s cataclysm_spellbooks:sandstorm 3
execute if score @s yharon_phase matches 0..2 if score @s yharon_attacktype matches 36..50 run cast @s fireball 5
execute if score @s yharon_phase matches 0..2 if score @s yharon_attacktype matches 51..70 run cast @s traveloptics:lava_bomb 3
execute if score @s yharon_phase matches 0..2 if score @s yharon_attacktype matches 71..100 run cast @s heat_surge 15

execute if score @s yharon_phase matches 3..5 if score @s yharon_attacktype matches 1..20 run cast @s traveloptics:meteor_storm 7
execute if score @s yharon_phase matches 3..5 if score @s yharon_attacktype matches 21..40 run cast @s cataclysm_spellbooks:sandstorm 12
execute if score @s yharon_phase matches 3..5 if score @s yharon_attacktype matches 41..70 run cast @s cataclysm_spellbooks:abyss_fireball 4
execute if score @s yharon_phase matches 3..5 if score @s yharon_attacktype matches 71..85 run cast @s traveloptics:lava_bomb 9
execute if score @s yharon_phase matches 3..5 if score @s yharon_attacktype matches 86..100 run cast @s sunbeam 5

scoreboard players reset @s yharon_attack
execute store result storage augustmc:random yharon_attack int 1 run random value 5..15
execute store result score @s yharon_attacktype run random value 1..100