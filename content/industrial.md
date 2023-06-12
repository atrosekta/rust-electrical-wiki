
# Industrial

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
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Wagon Crate, Underwater Lab Blue Crate
Electrical Inputs/Outputs | Power Input, Turn On, Turn Off / Electrical Passthrough, Filter Fail, Filter Pass
Industrial Inputs/Outputs | Industrial Input / Industrial Output
Active Usage        | 1
Power Consumption   | 1rw
Power Output        | Input power minus 1
Transfer Rate       |
Despawn Time        | 5 minutes

#### Filter settings :  
`MAX`: The Conveyor will stop moving this item when the target container(s) reach this amount.  
`MIN`: The Conveyor will only move items in excess of this amount from the input container(s)  
`BUFFER`: The Conveyor will only move in chunks of this size.
(Useful for crafting recipes in tandem with MAX to eliminate overfilling and trickle filling)

There is a max of 12 items that can be filtered.  
You can filter by specific items or by a general filter group (
Weapons, Medical, Ammo, Traps, Electrical,
Construction, Resources, Clothing, Food, Other, Fun, Tools, Components )

#### Notes:

- It can "see" a maximum of 32 storage adaptors per side,
  *you can "cheat" and make it pull from up to 94 boxes but its not explained here for now*
- There is a maximum of 32 combiners/splitters between each storage adaptors and the conveyor
- it should move a max of 60 items per 12 stack max at a time, unstackable items count as 1 stack,
  *but when writing this in may 2023, it is broken,
  it act weird and in a lot of cases it will move more items than it should,
  it try to fill 12 slot in the output box no matter how many stack it pull from in the input box,
  instead of the other way around ...*
- Powered conveyors retain their on/off state during a server restart,  
  but unpowered conveyors lose their on/off state.
- you can trick a conveyor into seeing the same box multiple times,
  resulting in a "boosted output" that move a lot more items at a time
- there is currently a bug when it is depositing into any type of smelter
  and have a `MAX` filter setting, it will only filter pass on the first item move,
  then swap to filter fail, while keeping the furnaces topped up.
  This is unique to furnaces though, and the filter fail/pass outputs work properly on boxes etc.  
  so to get around it you just need another conveyor that isnt connected to the furnaces,
  on which you can get a correct filter fail / pass output.  
  [this rustrician bp](https://www.rustrician.io/?circuit=1f0b982f75e15fd1c39def617e7eb9b1) show it
- another bug currently there is that some items wont be picked up by conveyors ...  
  it appears to be stackable items that also have health, ladders and fuses for example.

---

# Industrial Crafter![](images/industrial-crafter.png)

| | |  
|-|---|  
Item ID             |  1430085198
Description         | Attaches to a workbench to allow automated crafting
Crafting Recipe     | 3 HQM, 2 Tech Trash
Recycles Into       | 2 HQM, 1 Tech Trash
Stack Size          | 5
Workbench Required  | Level 2
Research Table Cost | 75 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Elite Crate, Underwater Lab Yellow Crate, Wagon Military Crate
Electrical Inputs   | Power In, Toggle, Turn On, Turn Off
Industrial Inputs/Outputs | Industrial In, Blueprints In / Industrial Out, Blueprint Out
Active Usage        | 0
Power Consumption   | 1rW
Transfer Rate       |
Despawn Time        |

Notes:

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
Transfer Rate       |
Despawn Time        | 5 minutes

Notes:

---

# Electric Furnace![](images/electrical-furnace.png)

| | |  
|-|---|  
Item ID                   |  
Description               | An electrical version of a furnace that uses electricity instead of a fuel source
Crafting Recipe           | 5 HQM, 200 Metal Fragments
Recycles Into             | 3 HQM, 100 Metal Fragments
Stack Size                | 1
Workbench Required        | Level 2
Research Table Cost       | 75 Metal Fragments
Hit Points                | 500
Where To Find             |
Electrical Inputs         | Power, Turn On, Turn Off
Transfer Rate             |
Despawn Time              |
Decay Time                |

Notes:  
- Can be turned on manually, by sending power to the “Turn on” input, or by a nearby igniter.
- Like conveyors, powered furnaces retain their on/off state during a server restart,  
  but unpowered funrnaces lose their on/off state.

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
Where To Find             |
Industrial Inputs/Outputs | Industrial In / Industrial Out 1, Industrial Out 2, Industrial Out 3
Transfer Rate             |
Despawn Time              |
Decay Time                |

Notes:

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
Where To Find             |
Industrial Inputs/Outputs | Industrial In 1, Industrial In 2, Industrial In 3 / Industrial Out
Transfer Rate             |
Despawn Time              |
Decay Time                |

Notes:

---
