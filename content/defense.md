
# Defense

These components are designed to kill players.

---

# SAM Site![](images/image92.png)

| | |  
|-|---|  
Item ID           | -1009359066
Description       | Defends against aerial threats
Recycles Into     | 25 High Quality Metal
Stack Size        | 1
Hit Points        | 1000
Where To Buy      | Outpost for 500 Scrap
Inputs/Outputs    | Power In / Has Target, Low Ammo, No Ammo, Passthrough
Active Usage      | 25
Power Consumption | 25rW
Power Output      | 1rw
Power Passthrough | Input power minus 25
Despawn Time      | 5 minutes
Decay Time        | 12 hours

Notes:

- They are used for destroying player flown aircraft, i.e. minicopter, scrap heli and hot air balloon. It doesnt matter if there is a pilot or if the pilot has TC auth. They shoot the craft, not the player, unless in Defender Mode.
- Looking at the SAM and holding Use(E) allows a player to enable and disable Defender Mode. In Defender Mode it will only target incoming MLRS rockets.
- To successfully defend from an MLRS attack, it is recommended placing 3 SAM Sites on the side of the base that is nearest the Abandoned Military Base and build them as high as the base is tall. 
- Has a range of 150 meters, or 1 grid square.
- It will not target anything below its own height.
- **Has Target** will pulse out 1rW if it takes damage and will release a constant 1rW if it locks a target.
- **Low Ammo** will start to output 1rW when there is 10 SAM Ammo or less. When it has no more ammo it will stop outputting power.
- **No Ammo** will output 1rW constantly when there is no more ammo.
- If 100 power is given to the SAM, 75 will come out Passthrough. 
- Must be placed on flat surfaces.
- Try to place them in a way they cannot be baited and used to destroy surrounding structures.


---

# Auto Turret![](images/image91.png)

| | |  
|-|---|  
Item ID             | -2139580305
Description         | A automated sentry turret to neutralize targets
Crafting Recipe     | 10 High Quality Metal, 1 CCTV Camera, 1 Targeting Computer
Recycles Into       | 5 High Quality Metal, 50% 1 CCTV Camera, 50% 1 Targeting Computer
Stack Size          | 1
Workbench Required  | Level 2
Research Table Cost | 500 Scrap
Hit Points          | 1000
Where To Buy        | Outpost for 400 Scrap
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Elite Crate, Underwater Lab Yellow Crate
Inputs/Outputs      | Power In / Has Target, Low Ammo, No ammo
Active Usage        | 10
Power Consumption   | 10rW +1 if outputs are used
Power Output        | 1rW
Despawn Time        | 60 minutes

Notes:

- There are 2 modes, Peacekeeper and Attack All.
- Enable and disable Peacekeeper mode by looking at the turret and holding Use(`E`). In peace keeper mode it will only attack a player if they become aggressive. In Attack All mode it will kill anyone not on its authorization list.
- Add people to the authorization list by looking at the turret and holding Use(`E`) and accessing the user interface.
- **Has Target** will pulse out 1rW if it takes damage and will release a constant 1rW if it locks a target.
- **Low Ammo** will start to output 1rW when there is 50 ammo or less. When it has no more ammo it will stop outputting power.
- **No Ammo** will output 1rW constantly when there is no more ammo.
- Range is 30 meters or 10 square foundations.
- The turret has just over a 180 degree detection arch.
- Must be placed on flat surfaces.
- Try to place them in a way they cannot be baited and drained.
- They can shoot through 2 layers of Chainlink Fence.


---

# Tesla Coil![](images/image117.png)

| | |  
|-|---|  
Item ID             | 1371909803
Description         | An electrical trap that zaps nearby players
Crafting Recipe     | 3 High Quality Metal, 1 Tech Trash
Recycles Into       | 2 High Quality Metal, 50% 1Tech Trash
Stack Size          | 3
Workbench Required  | Level 2
Research Table Cost | 20 Scrap
Hit Points          | 250
Where To Buy        | Outpost for 75 Scrap
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Blue Crate, Underwater Lab Elite Crate, Underwater Lab Yellow Crate
Inputs/Outputs      | Power In
Active Usage        | 35
Power Consumption   | 1-35rW
Despawn Time        | 5 minutes

Notes:

- Tesla Coil deals damage at a rate of 1hp/second per rust watt up to a max of 35rW. This means if you give a tesla coil 5rW, it will do 5hp of damage per second. Give it 35rW and it will do 35hp of damage per second.
- Their damage is stackable. 100 Tesla Coils given 1rW will kill a person in 1 second.
- The range is just over 1 square foundation or 3.5 meters.
- Can be placed on all surfaces including the ground.
- With a building trick, a tesla coil can zap people through walls, floors and roofs.
- They damage themselves at a rate of 2hp/second. 
- They will not turn on if their health is at or below 62hp.


---

