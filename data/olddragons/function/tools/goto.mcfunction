execute if entity @s[type=!ender_dragon] run return 0
scoreboard players set @s DragonChargeTimer 3
$summon marker $(x) $(y) $(z) {Tags:["goto"]}
execute at @s store result score @s ChargeTargetX run data get entity @n[tag=goto,type=marker] Pos[0] 100
execute at @s store result score @s ChargeTargetY run data get entity @n[tag=goto,type=marker] Pos[1] 100
execute at @s store result score @s ChargeTargetZ run data get entity @n[tag=goto,type=marker] Pos[2] 100
kill @e[type=marker,tag=goto]