tag @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Duration:1,Amplifier:0b}]}] add explosive
execute as @e[type=minecraft:arrow,tag=explosive] at @s unless block ^ ^ ^-1 air run tag @s add explode
execute as @e[type=minecraft:arrow,tag=explosive] at @s unless block ^-1 ^ ^ air run tag @s add explode
execute as @e[type=minecraft:arrow,tag=explosive] at @s if entity @e[distance=1] run tag @s add explode
execute as @e[tag=explode,type=arrow] run tag @s remove explosive
execute at @e[tag=explode,type=arrow] run summon tnt ~ ~ ~ 
execute as @e[tag=explode,type=arrow] run kill @s