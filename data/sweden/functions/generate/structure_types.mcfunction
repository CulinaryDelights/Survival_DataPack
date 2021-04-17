execute as @e[type=armor_stand,tag=s_structure,tag=s_overworld,tag=!y_range] at @s unless block ~ ~-1 ~ #minecraft:surface run spreadplayers ~ ~ 0 7 false @s

#TO GIVE A SET Y LEVEL RANGE, ADD: " ,tag=y_range " TO THE SELECTOR. AND REMOVE " if block ~ ~-1 ~ #minecraft:surface " FROM COMMANDS.

#COPY AND PASTE THESE THREE COMMANDS FOR EACH STRUCTURE, THEN DELETE HASHTAGS
execute as @e[type=armor_stand,tag=s_structure,scores={s_type=2},tag=s_overworld] at @s if block ~ ~-1 ~ #minecraft:surface run tag @s add s_kill
execute as @e[type=armor_stand,tag=s_structure,scores={s_type=2},tag=s_overworld,tag=s_kill] at @s run setblock ~ ~ ~ minecraft:structure_block{ignoreEntities:0b,rotation:"NONE",posX:1,posY:0,posZ:1,mode:"LOAD",name:"structures:dirt_pillar"}
execute as @e[type=armor_stand,tag=s_structure,scores={s_type=2},tag=s_overworld,tag=s_kill] at @s run setblock ~ ~ ~1 minecraft:redstone_block