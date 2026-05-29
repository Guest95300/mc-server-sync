execute if score @s wroughtnaut_special_attacktype matches 1..10 run cast @s cataclysm_spellbooks:gravity_storm 5
execute if score @s wroughtnaut_special_attacktype matches 11..40 at @p[distance=..20,gamemode=!spectator,gamemode=!creative] positioned ^ ^ ^-3 run tp @s ~ ~1 ~ facing entity @p
execute if score @s wroughtnaut_special_attacktype matches 11..40 run target @s @p[distance=..20,gamemode=!spectator,gamemode=!creative]
execute if score @s wroughtnaut_special_attacktype matches 11..40 run cast @s cataclysm_spellbooks:gravitation_pull 10
execute if score @s wroughtnaut_special_attacktype matches 41..50 run cast @s cataclysm_spellbooks:conjure_koboldiator 5

execute if score @s wroughtnaut_special_attacktype matches 51..100 if entity @a[distance=..5] run cast @s cataclysm_spellbooks:tectonic_tremble 2

execute if score @s wroughtnaut_special_attacktype matches 51..100 unless entity @a[distance=..5] run tp @s ~ ~1 ~
execute if score @s wroughtnaut_special_attacktype matches 51..100 unless entity @a[distance=..5] run cast @s burning_dash 9