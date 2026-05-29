data modify storage augustmc:boss active set value 1

scoreboard players set @a boss_playerLives 12
execute as @a run title @s actionbar ["A player has entered a boss domain. You have ",{"score":{"name":"@s","objective":"boss_playerLives"}}, " lives."]
schedule function augustmc:boss_actionbar 5s
function augustmc:bosses_recursive
function augustmc:sandworm_summons

execute at @e[predicate=augustmc:mamboss] positioned over world_surface positioned ~ ~64 ~ run photon fx photon:boss_found block ~ ~ ~

execute at @e[predicate=augustmc:mamboss] at @a[distance=..200] run playsound terra_entity:roar player @a ~ ~ ~ 0.5 0.9