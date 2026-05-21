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