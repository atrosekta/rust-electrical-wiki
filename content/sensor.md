
# Sensors

---

# HBHF Sensor![](images/image6.png)

| | |  
|-|---|  
Identifier          |  -1507239837
Description         | Detecting heartbeat, breathing, humidity and footsteps
Crafting Recipe     | 75 Metal Fragments
Recycles Into       | 38 Metal Fragments
Stack Size          | 1
Workbench Required  | Level 2
Research Table Cost | 75 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Dweller, Underwater Lab Blue Crate, Underwater Lab Elite Crate, Underwater Lab Yellow Crate
Inputs/Outputs      | Power In  / Power Out
Active Usage        | 1
Power Consumption   | 1rW
Power Output        | 1 per person detected
Despawn Time        | 20 minutes
Decay Time          |

Notes:

- Detection range is about 11m or 3.5 square foundation
- Requires line of sight. A player crouching under a half height floor
  can be seen by the sensor from above. Can also be built to see through
  walls, floors and roofs.
- Only outputs an amount of power equal to the number of people it
  detects, meaning if you connect Power Out to a Counter set to Show
  Passthrough, you can see the number of people the HBHF is detecting
- Can be set to Include/Exclude Authorized and Others by looking at
  Sensor
- Will detect all scientist types including ones riding in the CH47
- Can be placed on all angled surfaces and the ground

---

# Laser Detector![](images/image19.png)

| | |  
|-|---|  
Identifier          |  -798293154
Description         | Passing power through when a person is in the beam
Crafting Recipe     | 75 Metal Fragments
Recycles Into       | 38 Metal Fragments
Stack Size          | 5
Workbench Required  | Level 2
Research Table Cost | 75 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Elite Tier Crate, Excavator Scientist, Heavy Scientist, Locked Crate, Military Base Scientist, Military Crate, Oil Rig Scientist, Patrol Scientist, Treasure Box, Underwater Lab Blue Crate, Underwater Lab Elite Crate, Underwater Lab Yellow Crate
Inputs/Outputs      | Power In / Power Out
Active Usage        | 1
Power Consumption   | 1rW
Power Output        | Power input minus 1
Despawn Time        | 20 minutes

Notes:

- The maximum detection distance is 4.5m or 1.5 square foundations
- Laser will not detect if approached straight on
- Placing the laser closer than .5m meters to a single door will not
  detect a player passing through from the opposite side
- If a player remains in the beam, it will continue to hold detection
  for 12m or 4 square foundations
- Can be crouched under and jumped over
- Can be placed in floors before upgrading to detect players walking
  above
- The visual laser can be blocked with any deployable item and rideable
  horses
- The laser will detect land, sea and air vehicles including NPC
  helicopters excluding horses
- Can only be placed on vertical surfaces
- Can be placed on a foundation before upgrading

---

# Pressure Pad![](images/image129.png)

| | |  
|-|---|  
Identifier          |  -2049214035
Description         | Passing power when a player stands on it
Crafting Recipe     | 150 Wood/1 Spring/1 Gear
Recycles Into       | 75 Wood/50% - 1 Spring/50% - 1 Gear
Stack Size          | 1
Workbench Required  | Level 1
Research Table Cost | 20 Scrap
Hit Points          | 200
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate
Inputs/Outputs      | Power In / Power Out
Active Usage        | 1
Power Consumption   | 1rW
Power Output        | Power in minus 1
Despawn Time        | 5 minutes
Decay Time          |

Notes:

- Will generate 1rW briefly when pressed.
- When the pad is supplied with power, it will pulse 1rW first then
  output the incoming power.
- Detects land, sea and air vehicles, this includes horses
- Can be triggered through half height floors from below or ramps from
  above
- Can only be placed on floors or foundations
- Can be connected to Root Combiners

---

# Reactive Target![](images/image119.png)

| | |  
|-|---|  
Identifier          |  -1736356576
Description         | Target practice and fun
Crafting Recipe     | 100 Wood, 150 Metal Fragments, 1 Gear
Recycles Into       | 50 Wood/75 Metal Fragments/50% - 1 Gear
Stack Size          | 1
Workbench Required  | Level 1
Research Table Cost | 20 Scrap
Hit Points          | 250
Where To Find       | Arctic Scientist, Cargo Ship Scientist, Crate, Excavator Scientist, Military Base Scientist, Oil Rig Scientist, Patrol Scientist, Sunken Chest, Tunnel Dweller, Underwater Dweller, Underwater Lab Blue Crate
Inputs/Outputs      | Power In, Reset, Lower / Power Out
Active Usage        | 1
Power Consumption   | 1rW
Power Output        | 1rW
Despawn Time        | 5 minutes
Decay Time          | 48 hours

Notes:

- When the target is lowered for any reason, it will pulse out 1rW
- Can be connected to Root Combiners
- When the target is supplied with power, when lowered for any reason,
  it will pulse 1rW first then output the incoming power constantly
  until it stands back up
- There is no priority between Reset and Lower. Whichever input is given
  power last is the function that will take place
- Can be placed on floors, foundations or the ground

---
