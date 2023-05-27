
# Power Storage

---

Batteries can accept incoming power at the same time they are sending power out.  
Charging rate is dependent on the amount of power coming in, with an efficiency of 80%.  

> *Example:* 20rW from a Solar Panel \* 0.8 = 16rW usable through a battery.  

> *Example:* If your Medium Battery is supplying 16rW to a circuit,  
  you want to give the battery a minimum of 20rW so it doesn’t lose any charge.  

It is recommended to supply slightly more than you need if you want to charge the battery.  

1rw will charge a Large Battery in 34 IRL days.

When a battery is depleted because it is not receiving enough power,  
no power is outputed until it charges up for a couple seconds before
outputting to the connected circuit. The battery still not receiving
enough power will deplete in a second and the process repeats.  
If the circuit after a battery is turning on and off,
you do not have enough power charging your batteries.

When they get picked up, they lose 25% HP but retain their current
capacity. This means if a large battery has a full charge, when you pick
it up and place it back down, it will still have a full charge.

Batteries have something called Active Usage and components have
something called Power Consumption. this have [ its own section ](concepts.html#battery-active-usage-vs-actual-power-consumed).

![](images/battery-footprint.png)

---

# Small Rechargeable Battery![](images/image74.png)

| | |  
|-|---|  
Identifier          | -692338819
Description         | Storing electricity
Crafting Recipe     | 5 HQM
Recycles Into       | 3 HQM
Stack Size          | 1
Workbench Required  | Level 1
Research Table Cost | 20 Scrap
Hit Points          | 100
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Lab Blue Crate
Inputs/Outputs      | Power In / Power Output
Power Consumption   | 40rW
Power Capacity      | 150rW
Power Output/Time   | 10rW/15min
Active Usage        | 40
Despawn Time        | 5 minutes
Decay Time          |

Notes:

- Small Batteries are very compact and can be placed on some deployables
  like work/repair benches and boxes
- Maximum power input is 40rW
- Comes with a default charge of 20rWM

---

# Medium Rechargeable Battery![](images/image48.png)

| | |  
|-|---|  
Identifier          | 2023888403
Description         | Storing electricity
Crafting Recipe     | 5 HQM/1 Tech Trash
Recycles Into       | 3 HQM
Stack Size          | 1
Workbench Required  | Level 2
Research Table Cost | 75 Scrap
Hit Points          | 100
Where To Buy        | Bandit Camp for 75 Scrap
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Blue Crate, Underwater Lab Elite Crate, Underwater Lab Yellow Crate
Inputs/Outputs      | Power In / Power Output
Power Consumption   | 200rW
Power Capacity      | 9000rWM
Power Output/Time   | 50rW/3hrs
Active Usage        | 200
Despawn Time        | 20 minutes
Decay Time          |

Notes:

- These batteries are significantly larger than the small battery and
  take up 2sq meters or 2 squares on a stone foundation
- Maximum power input is 200rW
- Comes with a default charge of 100rWM

---

# Large Battery![](images/image56.png)

| | |  
|-|---|  
Identifier          | 553270375
Description         | Storing electricity
Crafting Recipe     | 10 HQM/2 Tech Trash
Recycles Into       | 5 HQM/1 Tech Trash
Stack Size          | 1
Workbench Required  | Level 2
Research Table Cost | 75 Scrap
Hit Points          | 100
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Blue Crate, Underwater Lab Elite Crate, Underwater Lab Yellow Crate
Inputs/Outputs      | Power In / Power Output
Power Consumption   | 400rW
Power Capacity      | 24000rWM
Power Output/Time   | 100rW/4hrs
Active Usage        | 400
Despawn Time        | 20 minutes
Decay Time          |

Notes:

- They need 2sq meters or 2 squares on a stone foundation of floorspace
- Maximum power input is 400
- They come with a default charge of 200rWM

---

