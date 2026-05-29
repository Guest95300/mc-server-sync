execute if score @s wroughtnaut_special_attacktype matches 1..15 run cast @s traveloptics:meteor_storm 3
execute if score @s wroughtnaut_special_attacktype matches 16..40 at @p[distance=..20,gamemode=!spectator,gamemode=!creative] positioned ^ ^ ^-3 run tp @s ~ ~1 ~ facing entity @p
execute if score @s wroughtnaut_special_attacktype matches 16..40 run target @s @p[distance=..20,gamemode=!spectator,gamemode=!creative]
execute if score @s wroughtnaut_special_attacktype matches 16..40 run cast @s cataclysm_spellbooks:gravitation_pull 15
execute if score @s wroughtnaut_special_attacktype matches 41..50 run cast @s cataclysm_spellbooks:conjure_koboldiator 10
execute if score @s wroughtnaut_special_attacktype matches 51..80 if entity @a[distance=..5] run cast @s cataclysm_spellbooks:tectonic_tremble 2
execute if score @s wroughtnaut_special_attacktype matches 51..80 unless entity @a[distance=..5] run tp @s ~ ~1 ~
execute if score @s wroughtnaut_special_attacktype matches 51..80 unless entity @a[distance=..5] run cast @s burning_dash 9
execute if score @s wroughtnaut_special_attacktype matches 81..95 run cast @s cataclysm_spellbooks:cursed_rush 2
execute if score @s wroughtnaut_special_attacktype matches 96..100 run cast @s black_hole 1

scoreboard players add @s wroughtnaut_special 4