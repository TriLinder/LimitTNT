execute store result score tnt tntLimiter run execute if entity @e[type=tnt]

execute if score tnt tntLimiter > limit tntLimiter run tellraw @a[tag=tntDebug] ["",{"text":"TNT Amount: ","color":"green"},{"score":{"name":"tnt","objective":"tntLimiter"},"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/tp @s @e[type=tnt,limit=1,sort=random]"}},{"text":"!","color":"green"}]
execute if score tnt tntLimiter > limit tntLimiter run scoreboard players add totalLimits tntLimiter 1
execute if score tnt tntLimiter > limit tntLimiter run kill @e[type=tnt,limit=750,sort=random]

execute if score tnt tntLimiter > limit2 tntLimiter run tellraw @a[tag=tntDebug] ["",{"text":"! ALL ","color":"dark_red"},{"text":"TNTs","bold":true,"color":"green"},{"text":" KILLED !","color":"dark_red"}]
execute if score tnt tntLimiter > limit2 tntLimiter run scoreboard players add totalResets tntLimiter 1
execute if score tnt tntLimiter > limit2 tntLimiter run kill @e[type=tnt]