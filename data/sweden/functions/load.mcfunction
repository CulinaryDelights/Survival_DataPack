tellraw @a {"text": "Reloaded!", "color": "#4B0082"}

scoreboard objectives add berry_eat minecraft.used:minecraft.sweet_berries
scoreboard objectives add spinach_delay dummy
give @a sweet_berries{spinach:1b,CustomModelData:1,display:{Name:'{"text":"Popeye\'s Spinach","italic":false}'}}

scoreboard objectives add cheese_eat minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add cheese_delay dummy
give @a cooked_porkchop{cheese:1b,CustomModelData:2,display:{Name:'{"text":"Cheese","italic":false}'}}

scoreboard objectives add beef_eat minecraft.used:minecraft.cooked_beef
scoreboard objectives add burger_delay dummy
give @a cooked_beef{burger:1b,CustomModelData:4,display:{Name:'{"text":"Hamburger","italic":false}'}}

give @p item_frame{display:{Name:'{"text":"Lucky Block"}'},CustomModelData:777777,EntityTag:{Silent:1b,Tags:["luckyblock"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:777777}},Invulnerable:1b,Invisible:1b,Fixed:1b}} 1