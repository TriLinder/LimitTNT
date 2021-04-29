schedule function tnt:one_second 1s

function tnt:check_others_active

scoreboard players operation limit2 tntLimiter = limit tntLimiter
scoreboard players operation limit2 tntLimiter *= multiplier tntLimiter