% Backup & Distribution Systems

# Battery Backup and Distribution Systems

# Direct Delivery

![](images/image86.png)

This is when you directly connect what generates power to your circuits.
If your power source is destroyed or stops producing power for any
reason, your circuits will go offline. This method is a great solution
for short term uses like getting some auto turrets asap for your clan or
getting some water pumps online early for a berry farm. While this
method is good for a short time to get an early game advantage, it is
not recommended to rely on this method for any length of time. We can
introduce batteries to our circuits to create backup power more suited
for long term use.

Pros:

- Easy to wire
- Minimal components
- Early game advantage

Cons:

- If power source is destroyed the components turn off
- No backup power
- Short term use only

There are 3 main types of battery backups. Below we have the Inline,
OR/Blocker and Nih Core.

---

# Inline

![](images/image26.png)

Inline is the easiest way to give yourself a battery backup. This method
is fast to make and wire. It is reliable assuming you are producing
enough power to keep the batteries charged and it is an easy way to
decentralize your circuits. When you connect your power source directly
to your battery, 100% of that power is used for the sole purpose of
charging your battery. When your battery is fully charged, any power
above what is needed to maintain your battery’s charge is not being
used, which we call wasted. For example, a large battery under a full
load of 100, needs to be given 125 to prevent it from draining. If you
are giving your battery 150, there is 25 power that is not being used.
For 1 battery it doesn't seem like a lot, but when you get into 4 or
more batteries, that is 100 power being wasted. When the power source
stops making enough electricity, the battery will continue to supply
power until they are depleted or destroyed.

Pros:

- Simple to make with minimal electrical components
- Perfect for decentralizing circuits

Cons:

- Inefficient use of power

---

# OR/Blocker![](images/image32.png)

This method has been around for a long time and has been carried over
from a previous version of electricity when batteries could only charge
or discharge, not both at the same time. This is a ‘Bypass Distributor’
because your main circuit runs off the main power produced and the
excess power is used to charge the battery. While considered out of date
today for use as a primary battery backup system, with some small
modifications, it is useful as a secondary battery backup which we will
talk about later. The way this method works is by sending power into the
first electrical branch and branching out enough power to meet your
circuit's needs. That power is passed to an OR Switch which sends power
to your circuit. The extra electricity from the first electrical branch
is sent to another electrical branch. Power is branched out to block the
Blocker which prevents the battery from draining. The extra power is
then used to charge the battery. When there is not enough power to keep
the battery blocked, the battery sends power out to the OR Switch to
keep your circuits online. Based on the picture above, if the windmill
only produces 75 power, it is not enough power to meet the demand of the
first electrical branch or block the battery. The battery takes over
powering your circuit but the 75 power is still coming out of the first
electrical branch. The power is still there, it is just not being used,
it is wasted.

Pros:

- Easy to understand
- Simple to build

Cons:

- Wasteful when using battery power
- Ignores the battery update to allow charging and discharging at the
  same time

# Secondary Battery Backup

A secondary battery backup is a way to provide power to a circuit after
the main backup system  goes offline. It's a backup of a backup so the
chance that it gets used on a typical day is near 0. Using the picture
below, we will break down how it works.

![](images/image109.png) 

We are using a Test Generator to represent a fixed power source so power
levels won’t go up or down like wind and solar. The power will either be
there or it will not. We install the battery pre charged. Replacing the
generator with a fixed amount of power from your main circuit, which has
a built-in battery backup already, makes this battery a secondary
backup. In coming power does not fluctuate. It is either present or it
is not. When the power is no longer present, the battery takes over. The
chance this battery is needed should be very low so the chance we need
to recharge it is very low so we don't provide the battery any power.

Pros:

- Uses only a few components so it's easy to build and wire
- Efficient for redundant backup power
- Can be inserted into almost any circuit at any point

Cons:

- Wasteful when using a dynamic power source
- Requires a pre charged battery
- Added costs for redundancy  

---

# Nih Core 

![](images/image87.png)

The Nih Core is the modern version of and replacement for the OR/Blocker
and is really meant to be used with 2 or more batteries. This method
takes advantage of changes that were made to batteries that allows them
to charge and discharge at the same time. The key component is the
Memory Cell which lets us redirect the main power to the battery when
there is not enough power to keep the battery blocked. Starting at the
power source, it is connected to an electrical branch to branch out
enough power to meet your circuit's needs. That power is sent to the
Memory Cell which sends the power up to the OR Switch and on to your
circuit. The extra electricity from the first electrical branch is sent
to another electrical branch and enough power is branched out to a
Splitter to SET and RESET the Memory Cell as well as block the Blocker
to prevent the battery from draining. The extra power from the second
Electrical Branch is sent to a second OR Switch and used to charge the
battery. When there is not enough power to keep the Splitter powered,
the Memory Cell will switch sending power from Output to Inverted
Output. This reroutes power away from the first OR Switch to the second
OR Switch which charges the battery. The battery is also unblocked to
keep your circuit online. Based on the picture above, if the windmill
only produces 75 power, it is not enough power to meet the demand of the
first electrical branch which means the splitter loses power. When the
Splitter loses power, it first stops sending power to SET on the Memory
Cell. Power is still going to RESET in that moment so the Memory Cell
flips outputs. RESET loses power followed by the Block Passthrough on
the Blocker. The battery takes over powering your circuit and the 75
power that is still going through the first electrical branch and memory
cell is now sent to the battery extending its life instead of being
wasted.

If you notice that power is flickering off/on when switching between
main power and battery power, it is because 1 of 2 issues. If using only
1 battery, add a Root Combiner between the battery and blocker to keep
the battery active. If using more than 1 battery,  add 1 or 2 components
between the Memory Cells Power Out and the OR Switch. This will give the
circuit a chance to provide battery power before the Memory Cell flips
outputs.

Pros:

- Less wasted electricity when on battery
- Utilizes the battery’s ability to charge and discharge at the same
  time

Cons:

- More components, more wiring.
- Added complexity
- Power flickers when changing states

---

