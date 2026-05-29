function augustmc:check_player_unlock
scoreboard objectives add GiveWorldSpawn dummy
execute unless score WorldPlayer GiveWorldSpawn matches 1 run schedule function augustmc:giveworldspawn 10s
gamerule keepInventory true
gamerule disableElytraMovementCheck true
gamerule playersSleepingPercentage 67
scoreboard objectives add get_item trigger

# Called once on datapack load
scoreboard objectives add get_item trigger
function augustmc:recursive

scoreboard objectives add kubejs_bosscheck dummy

execute store result storage augustmc:random target int 1 run random value 10..20
execute store result storage augustmc:random wroughtnaut_special int 1 run random value 10..20
execute store result storage augustmc:random yharon_attack int 1 run random value 10..20

function augustmc:boss_targeting_timer with storage augustmc:random
function augustmc:bosses_recursive

scoreboard objectives add boss_checkDeath minecraft.custom:hardcorerevival.knockouts
scoreboard objectives add boss_playerLives dummy
scoreboard objectives add wroughtnaut_special dummy
scoreboard objectives add wroughtnaut_special_attacktype dummy
scoreboard objectives add yharon_phase dummy
scoreboard objectives add yharon_attack dummy
scoreboard objectives add yharon_attacktype dummy

scoreboard objectives add bossHP dummy