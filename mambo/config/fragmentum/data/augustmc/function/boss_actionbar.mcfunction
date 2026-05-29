
execute if data storage augustmc:boss {active:1} run schedule function augustmc:boss_actionbar 2s
execute if data storage augustmc:boss {active:1} as @a run title @s actionbar ["Lives Remaining: ",{"score":{"name":"@s","objective":"boss_playerLives"}}]