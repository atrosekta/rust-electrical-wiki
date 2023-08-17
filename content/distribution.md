
# Power Distribution

After electricity is generated, it needs a way to get to the different end devices or circuits. The primary job of these components is to create the paths for power to flow, and/or control the amount of power feeding the end devices/circuits. There is a breakdown of different distribution systems located in [Power Distribution]( powerdistribution.html ) under the Concepts section.

---

# Root Combiner![](images/image67.png)

| | |  
|-|---|  
Item ID             | -458565393
Description         | Combining power from power sources
Crafting Recipe     | 75 Metal Fragments
Recycles Into       | 38 Metal Fragments
Stack Size          | 5
Workbench Required  | Level 1
Research Table Cost | 75 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate
Inputs/Outputs      | Root Power 1, Root Power 2 / Combined Power Out
Active Usage        | 1
Power Consumption   | 0rW
Power Output        | Same as input
Despawn Time        | 20 minutes

Notes:

- These allow Power Sources and batteries to be combined to produce higher amounts of available power. [Power Sources](sources.html#power-sources) are Wind Turbines, Large Solar Panels and Small Generators.
- Can be placed on all building surfaces.
- It has a max depth of 16 components between a power source and the combiner. If max depth is reached, going any deeper will result in a shared error message, [Short Circuit/Max Depth](powerdistribution.html#Short-Circuit-/-Max-Depth).
- It does not consume any power but will register 1 [Active Usage](powerstorage.html#battery-active-usage-vs-actual-power-consumed) on a battery.
- Combining batteries with a Root Combiner to get a larger amount of power is wiring the batteries in [Series](powerstorage.html#parallel-vs-series). The load is not evenly shared. For example, 2 batteries connected to a Root Combiner feeding a circuit that needs 50 power. Each battery will show an Active Usage of 50, not 25/25 to = 50.

---

# Electrical Branch![](images/image82.png)

| | |  
|-|---|  
Item ID             |  -1448252298
Description         | Branching power off from the main line by a set amount
Crafting Recipe     | 75 Metal Fragments
Recycles Into       | 38 Metal Fragments
Stack Size          | 5
Workbench Required  | Level 1
Research Table Cost | 75 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate
Inputs/Outputs      | Power In  / Branch Out, Power Out
Active Usage        | 0 + Branch Out
Power Consumption   | 1rW + Branch Out
Power Output        | Branch Out is the amount you configure it to. Power Out is the remaining power.
Despawn Time        | 5 minutes

Notes:

- Can be placed on all angled surfaces.
- Can be configured by pressing Use(`E`) while looking directly at the Branch.
- 2rW is the minimum Branch Out can be set to.
- These will consume 1 power but not register on a battery's [Active Usage](powerstorage.html#battery-active-usage-vs-actual-power-consumed).
- What Branch Out is set to will be the amount that registers on a battery’s Active Usage.
- Branch Out will always consume the amount of power it is set to, even if the components past it are disabled. 
- When an Electrical Branch sends power out, it will first send power through Power Out then send power through Branch Out. Check out the section on [Circuit Delay and Power Flow](powerdistribution.html#circuit-delay-and-power-flow).
- Is a key component to create a [Fixed Bus](powerdistribution.html##Fixed-Bus-(F-Bus))

---

# Splitter![](images/image71.png)

| | |  
|-|---|  
Item ID             |  -563624462
Description         | Splitting power evenly between up to 3 outputs
Crafting Recipe     | 100 Metal Fragments
Recycles Into       | 50 Metal Fragments
Stack Size          | 5
Workbench Required  | Level 1
Research Table Cost | 20 Scrap
Hit Points          | 500
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate
Inputs/Outputs      | Power In  / Power Out 1, Power Out 2, Power Out 3
Active Usage        | 1
Power Consumption   | 1rW
Power Output        | Input amount divided by the number of used outputs, minus 1
Despawn Time        | 5 minutes

Notes:

- Can only be placed on vertical walls.
- When the Splitter receives power it does not pass power through all connected outputs at the same time. Power outputs in the order of Output 1, Output 2 then Output 3. Check out the section on [Circuit Delay and Power Flow](powerdistribution.html#circuit-delay-and-power-flow).
- When an output is destroyed, it will redistribute power between the remaining outputs.
- Outputs can connect to the inputs of Root Combiners.
- Is a key component of a [Dynamic Bus](powerdistribution.html##Dynamic-Bus-(D-Bus)).

---

# Cable Tunnel (NOT CRAFTABLE)![](images/electric.cabletunnel.png)

| | |  
|-|---|  
Item ID           | 1835946060
Description       | Allows wires to pass through wall
Crafting Recipe   | Cannot be crafted
Recycles Into     | 5 High Quality Metal
Stack Size        | 1
Hit Points        | ∞
Inputs/Outputs    | Tunnel 1 In, Tunnel 2 In, Tunnel 3 In, Tunnel 4 In/Tunnel 1 Out, Tunnel 2 Out, Tunnel 3 Out, Tunnel 4 Out
Active Usage      | 1
Power Consumption | 1rW
Power Output      | Input minus 1
Despawn Time      | 20 minutes

Notes: 

- This item can only be spawned in by an admin.
- It has 4 inputs with 4 matching outputs.
- Was designed to let wires pass through walls when the idea was to not let wires pass through walls.

---

