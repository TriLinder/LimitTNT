tellraw @a ["",{"text":"TNT Limiter ","bold":true,"color":"green"},{"text":"by TriLinder has been loaded.","color":"aqua"}]

scoreboard objectives add tntLimiter dummy

schedule function tnt:one_second 1s

execute unless score limit tntLimiter matches 0.. run scoreboard players set multiplier tntLimiter 5
execute unless score limit tntLimiter matches 0.. run scoreboard players set limit tntLimiter 1500