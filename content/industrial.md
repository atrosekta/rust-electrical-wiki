
# Industrial

**What is the industrial system?**  
The industrial system is a series of pipes that can connect many different containers together for the purpose of automating the movement, crafting and smelting of items. Have a look at the [Industrial Concepts]( industrialconcepts.html ) section where there are breakdowns of different systems using these components. 

---

# Industrial Conveyor![](images/industrial-conveyor.png)

| | |  
|-|---|  
Item ID             |  610102428
Description         | Moves items through the pipe system
Crafting Recipe     | 75 Metal Fragments
Recycles Into       | 38 Metal Fragments
Stack Size          | 5
Workbench Required  | Level 1
Research Table Cost | 20 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate, Wagon Crate
Electrical Inputs/Outputs | Power Input, Turn On, Turn Off / Electrical Passthrough, Filter Fail, Filter Pass
Industrial Inputs/Outputs | Industrial Input / Industrial Output
Active Usage        | 1
Power Consumption   | 1rw
Power Output        | Input power minus 1
Transfer Rate       | Up to 60 items per stack from 12 stacks per 5 seconds.
Despawn Time        | 5 minutes

Notes:

- The 5 second rule. From turning on to the first transfer is 5 seconds. Between each transfer is 5 seconds. This is often referred to as a tick. 
- Anyone can turn them on or off but only players with TC authorization can access the filters.
- Has 3 outputs. A passthrough, Filter Pass and Filter Fail.
- It will display an image of the item being transferred as it transfers.
- 2 Conveyors cannot be connected together in a row. They must be separated by a Storage Adapter.
- Outputs filter pass and fail, do not consume power. This is 1 free 1rW.
- `Filter Pass` will send out 1rW constantly when the conditions of the filter are met. It will continue to send power for 5 seconds when the Conveyor will check to see if the conditions are still met. If they are, Filter Pass will continue to send out power. If the conditions are not met, it will stop sending out power.
- `Filter Fail` will send out 1rW constantly when the conditions of the filter are not met. It will continue to send power for 5 seconds when the Conveyor will check to see if the conditions are still not being met. If they are still not met, Filter Fail will continue to send out power. If the conditions are met, it will stop sending out power.
- Both the Filter Pass and Fail outputs will allow the Active Usage of inactive components through. This means if the circuit is using an Inline backup, the offline components will register Active Usage on the battery causing drain.
- There is a max of 12 items that can be filtered.
- You can filter by specific items or by a general filter groups ( Ammo, Clothing, Components, Construction, Electrical, Food, Fun, Medical, Other, Resources, Tools, Traps, Weapons )
- `Filter Item settings:`
    - `MAX:` conveyor will stop moving this item when all target containers reach this amount.
    - `MIN:` conveyor will only move items in excess of this amount from all input containers.
    - `BUFFER:` conveyor will only move in chunks of this size. (When used in tandem with the MAX setting, it is useful for crafting recipes with blue prints to help eliminate overfilling and trickle filling of Industrial Crafters.)
- `Filter Mode settings:`
    - `ANY ITEM:` This is the default setting. It will move all items unless there are Item Filters being used.
    - `REQUIRE ALL:` All item filters must be satisfied before transferring materials will begin. 
        - Used for requiring more than 1 item to begin transfer.
        - This filter works as expected if only using 1 storage adapter on a single container.
        - When all items are present, Conveyor will set Filter Pass and transfer.
        - When using multiple containers with a single adapter on each, all of each item type must be contained to a single box. The single box can contain all of more than 1 item.
        - `Bug:` When using 2 storage adapters, either on a single container to 2 containers, it won't transfer anything unless it is only 1 item in 1 box. If all the items in the filter list are present, Conveyor will set Filter Fail and not transfer. 
    - `EXCLUDE LISTED ITEMS:` Only items not listed will be moved.
    - Items in the filter list will be prevented from transferring.
    - When using more than 1 filter type, the conveyor will set Filter Pass even when the item in the container is on the exclusion list.
- The `Current Items` list can be copied from one conveyor to another using the **Copy** and **Paste** buttons. Holding Sprint(`Shift`) lets a user ***Copy(JSON)***. This can then be pasted into a text file allowing a player to share their conveyor filters outside of the game and between servers. Hold Sprint(`Shift`) to ***Paste(JSON)***. This will not copy the ‘Filter Mode’.  
- If it has power when the server restoots, it will remain powered on after the restart.
- There is an Industrial Max Depth of 32 components on either side (input/output) of the Conveyor.
- There is a max of 32 Storage Adapters on either side (input/output) of the Conveyor.
- It will move stackable items in groups of 60 items from up to 12 stacks at a time. 
- Unstackable items count as 1 stack each so it will move up to 12 items at a time.
- Every additional Storage Adapter added to a container will increase the number of stacks the conveyor can take by 12.
- They can be placed on all surfaces and the ground.
- Has the ability to be rotated using Reload(R).
- `As of 7/16/2023,` stackable items that also have health, like Ladders, Solar Panels, Fuses for example, will brick the Conveyor if their health has been decreased and are unable to stack. The Conveyor will remain in a Filter Pass state because the item could be moved, but because it is unable to be placed in an existing stack, it wont move the item. Do not place these broken or damaged items in the sorting system. 
- The term `Item` is specifically referring to the `Item ID` number. For example, the hazmat suit has different skins but they actually have different ID’s. This should not be an issue but some items will still be transferred even though the MAX item filter has been met. One example is the Arctic and Lumberjack suits. They are hazmats but even with a MAX filter of 1, 1 of each will be sent. The default skin will always fulfill the MAX requirement and block the remodeled versions, but the remodeled versions will not block each other. This issue also exists with the following items:
    - Hazmat Suit
    - Sky Lanterns
    - AK
    - Metal Tools
    - Torches

---

# Industrial Crafter![](images/industrial-crafter.png)

| | |  
|-|---|  
Item ID             |  1430085198
Description         | Attaches to a workbench to allow automated crafting
Crafting Recipe     | 3 High Quality Metal, 2 Tech Trash
Recycles Into       | 2 High Quality Metal, 1 Tech Trash
Stack Size          | 5
Workbench Required  | Level 2
Research Table Cost | 75 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Elite Crate, Underwater Lab Yellow Crate, Wagon Military Crate
Electrical Inputs   | Power In, Toggle, Turn On, Turn Off
Industrial Inputs/Outputs | Industrial In, Blueprints In / Industrial Out, Blueprint Out
Active Usage        | 0
Power Consumption   | 1rW
Despawn Time        | 20 minutes

Notes:

- These get installed onto workbenches. Max 2 per bench.
- The crafting speed for items is the same on all workbenches, unlike when a person crafts a level 1 item in front of a level 3 bench.
- They have inventory space for Blueprints, Inputs and Outputs. 
- The blueprints spot only holds BPs.
- Blueprints craft in order from left to right.
- Items can only be crafted on the required workbench or higher. 
- The Input spots hold items that will be used in the crafting process. Items can only go in. There is no way to clear these spots without doing it manually.
- The Output spots hold the crafted items. No items can be put into these spots unless done manually.
- Input items have their one industrial connection, Industrial In.
- Output items have their own industrial connection, Industrial Out.
- Blueprints have their own industrial in and outputs, Blueprint In and Blueprint Out.
- Has 4 electrical connections. The last IO that receives power is the action that is performed, with the exception of the Toggle. When power is removed from Toggle, the crafter will turn off.

---

# Storage Adapter![](images/storage-adaptor.png)

| | |  
|-|---|  
Item ID             |  -1049172752
Description         | Attach to a storage container to allow industrial IO connections
Crafting Recipe     | 100 Metal Fragments
Recycles Into       | 50 Metal Fragments
Stack Size          | 5
Workbench Required  | Level 1
Research Table Cost | 20 Scrap
Hit Points          | 30
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate, Wagon Crate
Industrial Inputs/Outputs | Industrial In / Industrial Out
Despawn Time        | 5 minutes

Notes:

- Used to connect containers to the industrial system to automatically move items in and out.
- The number of adapters and the containers they can be placed on a include:
    - Fridge - 1
    - Coffin - 1
    - Small Box - 2
    - Large Box - 4
    - Small Furnace - 1
    - Electric Furnace - 2
    - Large Furnace - 4
    - Refinery - 1
    - Drop Box - 1
    - Lockers - 3
    - Vending Machine - 1
    - Tool Cupboard - 2
- Adding multiple adapters to a container causes Conveyors to see the container multiple times.
- Their health is separate from the container it is attached to.

---

# Electric Furnace![](images/electrical-furnace.png)

| | |  
|-|---|  
Item ID                   |  -1196547867
Description               | An electrical version of a furnace that uses electricity instead of a fuel source
Crafting Recipe           | 5 High Quality Metal, 200 Metal Fragments
Recycles Into             | 3 High Quality Metal, 100 Metal Fragments
Stack Size                | 1
Workbench Required        | Level 2
Research Table Cost       | 75 Metal Fragments
Hit Points                | 500
Where To Find             | Arctic Scientist, Cargo Ship Scientist, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, NVG Scientist, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Elite Crate, Underwater Lab Yellow Crate, Wagon Military Crate
Electrical Inputs         | Power, Turn On, Turn Off
Smelt Rate                | 66% faster then a Small Furnace
Despawn Time              | 40 minutes
Decay Time                | 96 hours

Notes:  

- If they are receiving power when the server reboots, it will remain in the same state power reboot.
- Can be turned on manually or by sending power to the “Turn on” input, or by a nearby Igniter.
- Can be turned off manually or by sending power to the ‘Turn Off’ input. 
- The furnace cannot be turned off with a Sprinkler.
- The Input inventory spots hold raw ore and empty cans. Items can only go in
- There is no way to clear these spots without doing it manually.
- The Output inventory spots hold smelted ore. No items can be put into these spots unless done manually.
- Is 66% faster than a Small Furnace. 
- They cannot burn wood.
- Has the ability to be rotated using Reload(`R`).
 

---

# Industrial Splitter![](images/industrial-splitter.png)

| | |  
|-|---|  
Item ID                   | 742745918 
Description               | Splits an industrial connection into 3 separate connections
Crafting Recipe           | 75 Metal Fragments
Recycles Into             | 38 Metal Fragments
Stack Size                | 5
Workbench Required        | Level 1
Research Table Cost       | 20 Scrap
Hit Points                | 200
Where To Find             | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate, Wagon Crate
Industrial Inputs/Outputs | Industrial In / Industrial Out 1, Industrial Out 2, Industrial Out 3
Despawn Time              | 5 minutes

Notes:

- They split pipes allowing a Conveyor to send items to multiple containers.
- If pipes are split in a way that is not divisible into 60, it will cause Conveyors to pull less than 60 items per group per stack.
- Has the ability to be rotated using Reload(`R`).

---

# Industrial Combiner![](images/industrial-combiner.png)

| | |  
|-|---|  
Item ID                   | 1538126328
Description               | Combines 3 separate industrial connections into 1 connection
Crafting Recipe           | 75 Metal Fragments
Recycles Into             | 38 Metal Fragments
Stack Size                | 5
Workbench Required        | Level 1
Research Table Cost       | 20 Scrap
Hit Points                | 200
Where To Find             | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate, Wagon Crate
Industrial Inputs/Outputs | Industrial In 1, Industrial In 2, Industrial In 3 / Industrial Out
Despawn Time              | 5 minutes

Notes:

- It combines multiple pipes which allows a Conveyor to see multiple containers.
- Has the ability to be rotated using Reload(`R`).

---
