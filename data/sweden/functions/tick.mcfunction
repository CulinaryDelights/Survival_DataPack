#Spinach
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:sweet_berries",tag:{spinach:1b}}}] spinach_delay 2
execute as @a[scores={spinach_delay=1..,berry_eat=1}] at @s run say IM STRONG TO THE FINICH 'CAUSE I EATS ME SPINACH
execute as @a[scores={spinach_delay=1..,berry_eat=1}] at @s run effect give @s minecraft:strength 10 10
scoreboard players reset @a[scores={berry_eat=1..}] berry_eat
execute as @a[scores={spinach_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries",tag:{spinach:1b}}}] run scoreboard players remove @s spinach_delay 1

#CHEESE
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{cheese:1b}}}] cheese_delay 2
scoreboard players reset @a[scores={cheese_eat=1..}] cheese_eat
execute as @a[scores={cheese_delay=1..,cheese_eat=1}] at @s run effect clear @s
execute as @a[scores={cheese_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{cheese:1b}}}] run scoreboard players remove @s cheese_delay 2

#BURGER
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:cooked_beef",tag:{burger:1b}}}] burger_delay 2
execute as @a[scores={burger_delay=1..,beef_eat=1}] at @s run effect give @s regeneration 6 2
scoreboard players reset @a[scores={beef_eat=1..}] beef_eat
execute as @a[scores={burger_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:cooked_beef",tag:{burger:1b}}}] run scoreboard players remove @s burger_delay 2

#LUCKY BLOCK
execute as @e[type=item_frame,tag=luckyblock,tag=!placed] at @s run function sweden:lucky_block/place 
execute as @e[type=item_frame,tag=luckyblock,tag=placed] at @s unless block ~ ~ ~ glass run function sweden:lucky_block/remove