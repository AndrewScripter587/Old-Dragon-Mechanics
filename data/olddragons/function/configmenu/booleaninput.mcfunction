$scoreboard players operation Value Temp = $(id) Settings
$execute if score Value Temp matches 1 run tellraw @s {"text":"$(name): ","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"$(hovertext)"}, {"text":"\n\n$(id)","color":"gray","italic":true}]},$(extrajson)"extra":[{"color":"red","text":"[False]","hoverEvent":{"action":"show_text","contents":{"text":"Click to set to false."}},"clickEvent":{"action":"run_command","value":"/scoreboard players set $(id) Settings 0"}},{"text":" "},{"color":"green","text":"[True]","hoverEvent":{"action":"show_text","contents":{"text":"Click to set to true"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set $(id) Settings 1"}}]}
$execute if score Value Temp matches 0 run tellraw @s {"text":"$(name): ","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"$(hovertext)"}, {"text":"\n\n$(id)","color":"gray","italic":true}]},$(extrajson)"extra":[{"color":"green","text":"[False]","hoverEvent":{"action":"show_text","contents":{"text":"Click to set to false."}},"clickEvent":{"action":"run_command","value":"/scoreboard players set $(id) Settings 0"}},{"text":" "},{"color":"red","text":"[True]","hoverEvent":{"action":"show_text","contents":{"text":"Click to set to true"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set $(id) Settings 1"}}]}