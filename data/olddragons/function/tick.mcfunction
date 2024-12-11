execute store result storage olddragons ChargeFlySpeed float 1 run scoreboard players get ChargeFlySpeed Settings
execute store result storage olddragons FlySpeed int 1 run scoreboard players get FlySpeed Settings
execute as @e[type=marker,tag=DragonChargeRotation] at @s unless entity @e[type=ender_dragon,distance=..20] run kill @s
execute as @e[type=marker,tag=DragonVelocity] at @s unless entity @e[type=ender_dragon,distance=..20] run kill @s
execute as @e[type=marker,tag=DragonVelocityRot] at @s unless entity @e[type=ender_dragon,distance=..20] run kill @s
execute as @e[type=end_crystal] at @s unless entity @e[type=marker,tag=DragonNode,distance=..4] unless entity @e[type=marker,tag=center,distance=..10] run summon marker ~ ~2 ~ {Tags:["DragonNode"]}
execute as @e[type=marker,tag=center] at @s positioned 0 ~6 0 unless entity @e[type=marker,tag=DragonNode,distance=..2] run summon marker 0 ~ 0 {Tags:["DragonNode"]}
execute as @e store result score @s XPos run data get entity @s Pos[0] 100
execute as @e store result score @s YPos run data get entity @s Pos[1] 100
execute as @e store result score @s ZPos run data get entity @s Pos[2] 100
execute as @e[tag=DragonNode] store result score @s CrystalHeight run data get entity @s Pos[1] 100
execute as @e[tag=DragonNode] run scoreboard players operation @s CrystalHeight -= FlyHeight Settings
execute as @e[type=ender_dragon] store result score @s RNG run random value 1..1000
#Run the modified AI code
execute as @e[type=minecraft:ender_dragon] run function olddragons:ai
#Position center markers
execute as @e[type=marker,tag=center] at @s positioned over motion_blocking run tp ~ ~ ~
execute if score BedrockAEClouds Settings matches 1 as @e[type=area_effect_cloud] at @s run function olddragons:bedrockareaeffectcloudinit
scoreboard players enable @a odconfig