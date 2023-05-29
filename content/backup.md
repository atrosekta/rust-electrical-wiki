% Backup & Distribution Systems

# Battery Backup and Distribution Systems

There are 2 types of battery backup systems. There is the Inline and
there are bypass backups like the OR/Blocker and the Nih Core.  
When deciding which backup to choose,
there are a few factors you may want to consider.

There are 3 main types of distribution systems which we call a Power
Bus. These are the Fixed, Dynamic and Configure.

--- 

# Battery Backup Systems

---

## Direct Delivery

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

## Inline

![](images/image26.png)

This is called Inline because power must pass through the battery before
powering something. Inline is the easiest way to give yourself a battery
backup. This method is fast to make and wire. It is reliable assuming
you are producing enough power to keep the batteries charged and it is
an easy way to decentralize your circuits. When you connect your power
source directly to your battery, 100% of that power is used for the sole
purpose of charging your battery. When your battery is fully charged,
any power above what is needed to maintain your battery’s charge is not
being used, which we call wasted. For example, a large battery with an
Active Usage of 100, needs to be given 125 to prevent it from draining.
If you are giving your battery 150 so it charges, when it is fully
charged, there is 25 power that is not being used. When it needs to be
charged, that 25 power is better then 1 power because it will charge
faster. For 1 battery it doesn't seem like a lot, but when you get into
4 or more batteries, that is 100 power being wasted. When the power
source stops making enough electricity, the battery will continue to
supply power until they are depleted or destroyed. It is recommended to
let the battery charge to a minimum of 3000rWm before letting it power
anything.

Pros:

- Simple to make with minimal electrical components
- Perfect for decentralizing circuits

Cons:

- Inefficient use of power at large scale

---

## OR/Blocker 

![](images/image32.png)

Stop using this and stop calling it the ‘Infinite Power Loop’. This
method has been around for a long time and has been carried over from a
previous version of electricity when batteries could only charge or
discharge, not both at the same time. During this time batteries forced
a max power out causing the need to invent the ‘Infinite Power Loop’
which actually was something, but it was not this circuit. This is an
OR/Blocker battery backup. It is a ‘Bypass Battery Backup’ because your
main circuit runs off the main power produced, bypassing the
battery, while the excess power is used to charge the battery. While
considered out of date today for use as a primary battery backup system,
with some small modifications, it is useful as a secondary battery
backup which we talk about in its own section. The way this method works
is by sending power into the first Electrical Branch and branching out
enough power to meet your circuit's needs. That power is passed to an OR
Switch which sends power to your circuit. The extra electricity from the
first Electrical Branch is sent to another Electrical Branch. Power is
branched out to block the Blocker which prevents the battery from
draining. The extra power is then used to charge the battery. When there
is not enough power to keep the battery blocked, the battery sends power
out to the OR Switch to keep your circuits online. Based on the picture
above, if the windmill only produces 75 power, it is not enough power to
meet the demand of the first Electrical Branch or block the battery. The
battery takes over powering your circuit but the 75 power is still
coming out of the first electrical branch. The power is still there, it
is just not being used, it is wasted.

Pros:

- Easy to understand
- Simple to build

Cons:

- Wasteful when using battery power
- Ignores the battery update to allow charging and discharging at the
  same time

---

## Secondary Battery Backup

A secondary battery backup is a way to provide power to a circuit after
the main backup system goes offline. It's a backup of a backup so the
chance that it gets used on a typical day is near 0. Using the picture
below, we will break down how it works.

![](images/image109.png) 

We are using a Test Generator to represent a static power source
meaning power levels won’t go up or down like wind and solar. The power
will either be there or it will not so we install the battery pre
charged. It should never be used so we don’t plan on recharging it. The
static amount of power from your main circuit, which already has a
built-in battery backup already, makes this battery a secondary backup.
So because the incoming power does not fluctuate, it is either present
or it is not, when the power is no longer present, this battery takes
over. The only reason this battery is ever used is because the main
power sources are no longer supplying enough power and the main battery
backup has also failed. The chance this battery is needed should be 0 so
we dont bother building in recharging.

Pros:

- Uses only a few components so it's easy to build and wire
- Efficient for redundant backup power
- Can be inserted into almost any circuit at any point

Cons:

- Wasteful when using a dynamic power source
- Requires a pre charged battery
- Added costs for redundancy  

---

## Nih Core 

![](images/image87.png)

The Nih Core is the modern version of and replacement for the
OR/Blocker. When using a battery to power your main circuit, like the
Inline battery backup, you lose 20% of the power it receives. Bypass
battery backups, like the Nih Core, are a way around this. Instead of
your main circuit being powered by the battery, it gets power directly
from the Wind Turbine while the battery gets charged with the excess.
The Nih Core will automatically switch over to battery backup when the
power source is not producing enough.

The Nih Core is meant to be used with 2 or more batteries but we only
have 1 in the picture because it's all we need to demonstrate how it
functions. The simple explanation is when there is not enough power to
meet your circuit's requirements, it redirects the insufficient amount
of power to the battery and activates it to take over powering the
circuit. The reason the Nih Core is meant for 2 or more batteries is
because when running off windmill power, we don’t care about the
battery’s Active Usage. We are bypassing the battery therefore removing
any restrictions or conditions caused by it. Check out the section
called ‘Battery Active Usage Vs Actual Power Consumed’ for an in depth
explanation.

Using the following picture, we can see where power exists and where it
doesn’t when the Nih Core is running off of Main Power vs Battery Power.
The green wires have power and the red wires do not.

![](images/nih-core-paths.png)

To understand how this works, we need to understand the Memory Cell and
the Splitter. The inputs on the side of the Memory Cell are prioritized
from top to bottom and the Splitter when it receives power, it sends out
power from left to right. This also applies to when Splitters lose
power, they stop sending power out from left to right. The section
‘Circuit Delay and Power Flow’ helps explain in detail how rustricity
moves around a circuit.

Based on the picture above, if the windmill only produces 75 power, it
is not enough power to meet the demand of the first Electrical Branch
which is set to 100. That first Electrical Branch will still send that
75 power to the Memory Cell, but this means no power is going to the
second Electrical Branch therefore the Splitter loses power. When the
Splitter loses power, Output 1 first stops sending power to SET on the
Memory Cell. At that moment, power from Output 2 is still going to
RESET, so the Memory Cell flips outputs. RESET loses power followed by
Output 3 going to Block Passthrough on the Blocker. The battery takes
over powering your circuit and the 75 power that is still going through
the first Electrical Branch and Memory Cell is now sent to the battery
extending its life instead of being wasted. This will take a 4 hour
backup time and extend it.

Here is a look at a Nih Core with 4 batteries. Keep in mind Max Depth
when using large numbers of power sources and

![](images/ctr-nih-core.png)

batteries. 16 power sources and 16 batteries is the most you can connect
before hitting the Max Depth. Check out the section ‘Short Circuit / Max
Depth’ for an in depth explanation on that subject.

If you notice that power is flickering off/on when switching between
main power and battery power, it is because 1 of 2

![](images/nih-core-flicker-fix.png)

issues. If using only 1 battery, Solution 1, add a Root Combiner between
the battery and blocker to keep the battery active. If using more than 1
battery,  Solution 2, add 1 or 2 components between the Memory Cells
`Power Out` and the OR Switch. This will give the circuit a chance to
provide battery power before the Memory Cell flips outputs.

Recommended reading:

- [ Battery Active Usage vs Actual Power Consumption ](concepts.html#battery-active-usage-vs-actual-power-consumed)
- [ Short Circuit / Max Depth ](concepts.html#short-circuit-max-depth)
- [ Circuit Delay and Power Flow ](concepts.html#circuit-delay-and-power-flow)

Pros:

- Less wasted electricity when on battery
- Utilizes the battery’s ability to charge and discharge at the same
  time

Cons:

- More components, more wiring.
- Added complexity
- Power flickers when changing states

---

# Distribution Systems

---

## What is a Power Bus?

![](images/image127.png)

A power bus is a group of components with the sole purpose of directing
the flow of electricity to different circuits that perform specific
tasks such as auto turrets or lighting. This is a lot like the breaker
panel or fuse panel you have in your home for your electricity. Each
breaker or fuse is dedicated for a specific room or purpose, like the
fridge, furnace, bedrooms or garage. A power bus also helps prioritize
the order in which circuits receive power. In the event you are
producing less power then you need, you have built in control over which
circuit is last to go offline. We have 3 types of power buses, fixed,
dynamic and configurable.

---

## Fixed Bus (F-Bus)

![](images/image115.png)

A fixed bus, known as an F-Bus, is when you dedicate a specific amount
of power per output. This type of power bus always consumes the amount
of power each output is set to even if nothing is attached to Branch
Out. This will affect Inline battery backups by forcing an Active Usage
and it will affect a bypass battery backup by always consuming power,
even when the components connected to Branch Out are offline. A fixed
bus is an easy way to build in priorities and a bit of security. The
first Electrical Branch has the highest priority because it's the first
to get power and in the event that power levels start falling, it will
be the last branch to lose power. The security comes from knowing that
if 50% of the power supply disappears, only some branches will lose
power and not all.

---

## Dynamic Bus (D-Bus)

![](images/image51.png)

A dynamic bus, known as a D-Bus, is when we let the components evenly
distribute power between all connected outputs. The only control you
have over the amount of power available to each output is the amount of
power you put into it. This is primarily used when the component or
circuit attached to each output requires the same amount of power or
when each circuit uses less than the available power and you want to
avoid the forced Active Usage from an Electrical Branch. If an output
gets destroyed, the system will evenly redistribute power between the
remaining outputs. The drawback would be that if the incoming power
drops too low to support the connected outputs, everything will stop
working or at least those that require the full amount of power that was
previously present.

---

## Configure Siphon (C-Bus)

![](images/multi-c-bus.png)

A configure siphon, known as a C-Bus, is a bypass distributor that is
only active when required. The idea here is that we only want to use
power when the C-Bus is active otherwise the power just passes through.
We can set an Electrical Branch in the siphon to a specific amount of
power to only be used when the siphon is active. There are multiple
versions of the C-Bus, and we will dive into each one, but to start, I
just want to explain the concept.

All of them are centered around the Memory Cell. The Memory Cell has 2
outputs, Output and Inverted Output. One output is called the Main Line
(aka the bypass) and the other output goes to the Circuit that we want
to power. The Main Line is the default path the electricity takes when
the siphon is not active. It will pass from a Memory Cell to an OR
Switch and out. The Circuit path is the route electricity will take when
the Memory Cell gets triggered. It gets sent to an Electrical Branch
that is configured to an amount of power the circuit needs while the
remainder gets sent off to the OR Switch and back onto the Main Line to
continue powering the circuits past it. While this is the general
concept, we can get a little more specific.

There are 2 categories of Configure Siphons. There is the Auto Reset
which will automatically turn itself on when an input is received and
off when the input signal is removed. The second is Manual which
requires you to manually turn it on and off. Within each of these
categories there are 2 types. There is the standard C-Bus which is to be
used in a circuit that uses a bypass battery backup like the Nih Core.
The second type is the Blocked C-Bus meant to be used in a circuit that
uses an Inline battery backup. The reason 1 has a Blocker is because of
the nature of components and a battery's Active Usage. The Blocker has
the ability to hide Active Usage from a battery when it is actively
being blocked. Read more about that in the section titled Battery Active
Usage Vs Actual Power Consumed.

Now to get very specific. Starting with the Auto Reset siphons, these by
default will send power out the Inverted Output(left output). Power will
be passed to an OR Switch then out. In the Blocked version, power gets
passed to an Electrical Branch that is used to block a Blocker before
passing power to the OR Switch and out. ‘Out’ could be another siphon,
another type of power bus or whatever you would like. We are using a
HBHF Sensor as our input source but it doesnt have to be. All we need is
a constant source of power to keep the siphon active. When the sensor
outputs power, it will ‘SET’ the Memory Cell. This will force the Memory
Cell to flip outputs and send power through Output(right output). From
Output, power will be sent to an Electrical Branch configured to +2 over
the amount of power your circuit will need. The leftover power will pass
through Power Out and merge back into the Main Line. The power coming
out of Branch Out will go to another Electrical Branch that will be set
to the amount of power the circuit actually needs. The reason for +2 is
because we need 1 for the second Electrical Branch itself and 1 to be
sent out Power Out to ‘RESET’ on the Memory Cell. In the blocked
version, we are simply adding a Blocker before the first Electrical
Branch so we can hide the Active Usage caused by the Electrical Branches
from a battery. When the sensor stops sending power to ‘SET’, the power
going to ‘RESET’ will force the Memory Cell to flip outputs back to
Inverted Output and return power to the Main Line. In the blocked
version, because of the Electrical Branch on the Main Line, the Blocker
will get blocked again to hide the Active Usage.

The Manual siphons function in a very similar way only instead of using
‘SET’ or ‘RESET’ on the Memory Cell, we are using ‘TOGGLE’. Everytime
‘TOGGLE’ receives power, the Memory Cell will flip outputs. We have used
the Button in the pictured examples but it doesnt have to be. When it
comes to which output on the Memory Cell is the Main Line or the Circuit
line, it really doesnt matter because you have the ability to manually
control which output power is actively passing through.

In all the examples we have used Counters at each output. This is
only to show you how much power each C-Bus costs to not be active.
[Here is a Rustrician BP link to explore the C-Bus more ](https://www.rustrician.io/?circuit%3D71c12c6e40d98dea32fb463a773b2f42)

---

