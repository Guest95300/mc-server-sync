execute as @e[predicate=augustmc:mamboss] at @s if entity @e[type=touhou_little_maid:maid,distance=..12] run target @s @e[type=touhou_little_maid:maid,sort=nearest,limit=1]
execute as @e[predicate=augustmc:mamboss] at @s unless entity @e[type=touhou_little_maid:maid,distance=..12] run target @s @a[limit=1,sort=random,distance=..64,gamemode=!spectator,gamemode=!creative]

execute store result storage augustmc:random target int 1 run random value 10..20

function augustmc:boss_targeting_timer with storage augustmc:random