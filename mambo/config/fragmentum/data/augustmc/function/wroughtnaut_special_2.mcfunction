execute as @e[type=mowziesmobs:ferrous_wroughtnaut,tag=wroughtnaut_special_ready] at @s if score @s bossHP matches 1000.. run function augustmc:wroughtnaut_special_2_activate
execute as @e[type=mowziesmobs:ferrous_wroughtnaut,tag=wroughtnaut_special_ready] at @s if score @s bossHP matches ..1000 run function augustmc:wroughtnaut_special_2_activate_2

tag @s remove wroughtnaut_special_ready