
playsound mowziesmobs:wroughtnaut.shout2 hostile @a ~ ~ ~ 1 0.8
playsound mowziesmobs:wroughtnaut.shout2 hostile @a ~ ~ ~ 1 0.5
playsound mowziesmobs:wroughtnaut.shout2 hostile @a ~ ~ ~ 0.5 1
effect give @a[distance=..20] confluence:frozen 2 0 true
effect give @a[distance=..20] cataclysm:stun 2 0 true

tag @s add wroughtnaut_special_ready
schedule function augustmc:wroughtnaut_special_2 3s

scoreboard players reset @s wroughtnaut_special
execute store result storage augustmc:random wroughtnaut_special int 1 run random value 10..20
execute store result score @s wroughtnaut_special_attacktype run random value 1..100