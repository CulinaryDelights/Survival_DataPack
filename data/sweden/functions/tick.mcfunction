#Spinach
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:sweet_berries",tag:{spinach:1b}}}] spinach_delay 2
execute as @a[scores={spinach_delay=1..,berry_eat=1}] at @s run say IM STRONG TO THE FINICH 'CAUSE I EATS ME SPINACH
execute as @a[scores={spinach_delay=1..,berry_eat=1}] at @s run effect give @s minecraft:strength 10 10
scoreboard players reset @a[scores={berry_eat=1..}] berry_eat
execute as @a[scores={spinach_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries",tag:{spinach:1b}}}] run scoreboard players remove @s spinach_delay 1

#CHEESE
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{cheese:1b}}}] cheese_delay 2
scoreboard players reset @a[scores={cheese_eat=1..}] cheese_eat
execute as @a[scores={cheese_delay=1..,porkchop_eat=1}] at @s run effect clear @s
execute as @a[scores={cheese_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{cheese:1b}}}] run scoreboard players remove @s cheese_delay 2

#BURGER
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:cooked_beef",tag:{burger:1b}}}] burger_delay 2
execute as @a[scores={burger_delay=1..,beef_eat=1}] at @s run effect give @s regeneration 6 2
scoreboard players reset @a[scores={beef_eat=1..}] beef_eat
execute as @a[scores={burger_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:cooked_beef",tag:{burger:1b}}}] run scoreboard players remove @s burger_delay 2

#HOT DOG
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{hot_dog:1b}}}] hot_dog_delay 2
execute as @a[scores={hot_dog_delay=1..,porkchop_eat=1}] at @s run effect give @s regeneration 5 1
scoreboard players reset @a[scores={porkchop_eat=1..}] porkchop_eat
execute as @a[scores={hot_dog_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:cooked_porkchop",tag:{hot_dog:1b}}}] run scoreboard players remove @s hot_dog_delay 2