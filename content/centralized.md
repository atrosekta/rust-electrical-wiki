
# Centralized vs Decentralized

# Locations

When we talk about centralizing or decentralizing electricity, we are
talking about 1 of 2 things. We are either talking about the physical
placement of components or we are talking about power flow from a source
to the end component. In a 100% completely centralized system, the
electrical circuit would collect, store and distribute power all through
a single circuit and all of this would be located in a single electrical
room/area. A 100% completely decentralized system would have independent
circuits with their own power source, battery backup, and distribution
located in different rooms/areas for each system and section of a base.
These 2 concepts exist on the extreme ends of a spectrum. The best
circuit does not need to be one or the other, it can be located anywhere
in between. There are several variables including the server, wipe
length, group size, the base, server limits and electrical experience
that will influence the solution that works for your situation. This is
not a 1 size fits all. The best circuit is the one that does the job you
need in the time you need it.

First we will talk about the physical placement then we will get into
the electrical circuit(s).

When talking about centralizing or decentralizing the physical location
of components, it should be understood that we are NOT talking about the
auto turrets on the roof for defense. We are NOT talking about the
quality of life improvements of having electric heaters everywhere
because the build location was in the arctic biome. We are NOT talking
about the components placed on walls for the purpose of destruction
detection. What we are talking about is the location of the core
components. We are talking about all the circuits that power, control
and support the defensive systems, monitoring systems or quality of life
systems. We are talking about the location of collection points for
power sources, battery backups, the batteries, power buses and all the
logic circuits for everything electric in a base. We are talking about
the location a Windmill sends its power to or the place where the wire
that powers the auto turret comes from.  

## Centralized Location

![](images/image37.png)

Where you place these components is very important because you don’t
want to make it easy for raiders to destroy them. You want to protect
your circuits like you protect your TC. Centralizing the placement of
these components in a single room or area is very convenient. It's easy
to add layers of honeycomb, add lots of traps and doors to protect but
can come at the potential risk that if raiders get into this room/area,
with 1 rocket they can destroy and disable everything. You could place
it in a spot where raiders would not think to or want to raid. When
centralizing, the location should not be an afterthought. It should be
preplanned into the base.

No matter where the room is, hiding the wires that will need to lead to
and from this room is a must. They should be either hidden out of sight
or mislead the raiders as to the rooms location. Wires are limited in
length so in smaller bases, it is much easier to reach all the
components outside the room, like auto turrets, without requiring extra
components to extend the wire. In larger bases, this can become a
problem if you don't have a safe place to put components to extend the
wires. A safe place should not be easier to destroy than the end
component itself. As an example, if you are using a memory cell to
extend a wire to an auto turret. The memory cell should not be easier to
destroy than the auto turret it connects to. When it comes to wire
extensions, any component with a passthrough works but IMO, Industrial
Lights are the best because they are cheap to craft and easy to make
look like it is just base lighting giving it the perfect camouflage.

---

## Decentralized Locations

![](images/image107.jpg)

Decentralizing the physical locations of circuits is where there are 2
or more electrical rooms/areas. These locations should be hard to find
and harder to raid. These locations should be rooms that raiders would
not think is worth raiding. The more rooms there are, the less likely
raiders will disable every system when cutting the base in half with
rockets. The larger the base is, the easier it should be spreading out
the electrical rooms/areas. The more spread out these locations are the
more protected they are and has the added benefit of not needing wire
extensions to reach end devices in a given area.

Hiding your wires is very important. Any information a raider can
collect about the locations of your electrical rooms should be
minimized. With the limitation of wire length, decentralizing can be an
excellent way of distributing power closer to where it is actually
needed. Eliminating the need to use wire extensions makes things more
secure and builders won't need to build in extra rooms just for this.
These locations could be anywhere but it is recommended you plan them
into the build for more security. Electrical rooms should not be an
afterthought just like the disconnected TC was not an afterthought.

---

# Circuits

When we talk about centralizing or decentralizing circuits, we are
talking about how we are delivering power from the source to the
different systems and end components. It is crucial to understand the
structure of a base circuit because it makes it easier to visualize the
difference between Centralized and Decentralized circuits. To help
explain this, we will use 3 different end devices/circuits. First - Auto
Turrets, Second - A HBHF grid to know where enemies are and Third -
Lights.

Centralized is a single system with all power sources, destruction
detection, batteries, power distribution and end systems connected in a
single circuit. To be more specific, all power sources get combined and
run through a destruction detector into a battery backup system. From
the battery back up we provide all of the end devices and circuits with
a single distribution system.

![](images/image70.png)

Decentralized is when we provide all of our end systems with their own
power source, destruction detection(optional), battery and power
distribution. Decentralization is a concept that exists on a spectrum.
On one extreme it could be as simple as cutting the base in half and
using 1 circuit for the North and 1 for the South or putting the turrets
on 1 circuit and keeping the HBHF and lights on another. On the other
extreme end we break every end system down as far as we want. Let's
start with auto turrets and let's say we have 15 of them. 3 per side,
North, South, East and West as well as 3 on the roof. That could be 5
separate circuits. 5 separate power sources with 5 different detectors,
5 battery backups and 5 separate distributors. Then we could also do the
same with the HBHF grind. Separate that into 5 circuits. Destruction
detection could be included in all of those circuits and separate stand
alone systems could be added for all the walls on each of the 4 sides.
Even the lights if you wanted to could be decentralized.  

![](images/image3.png)

Knowing ahead of time what systems your base will use, how much power
they consume, the size of the base and the environment being played in
(competitive vs casual), will influence your design. For best results,
design the base build around your circuits so you never need to
sacrifice functionality or security.

---

## Centralized Circuits

Here we can look at some examples of a centralized circuit. Like we
stated before, the idea is to combine everything into a single circuit.
These have the advantage of being less complex but at the disadvantage
of having single points of failure. The first circuit we can look at in
the image below is pretty simple. We have a single source of power
feeding an inline battery backup supplying power to our end components
and circuits through a single distributor. We are starting with an
inline backup because it does not scale efficiently in a centralized
environment and it is easier to see points of failure. If the battery
gets destroyed or if the first Electrical Branch gets taken out, the
entire system goes offline.

![](images/image65.png)

The trick with an Inline system is to produce enough power to keep your
battery charged but not produce so much that power is wasted. A large
battery needs a constant input of 125 to not drain if its Active Usage
is maxed out at 100. With an input of 127, it will take that battery 34
days to fully charge from empty. Always try to precharge the batteries
above 3,000rWm before letting them power the circuit. Anything above
what's needed to maintain the battery will be a waste of power when the
battery is full.

When a circuit requires more than 100 power, and the goal is still to
centralize, switch to a bypass system like the Nih Core and max out your
batteries potential. If the amount of reliable power that can be
produced is limited, the goal should be to minimize the battery's Active
Usage to a state that is manageable. The lower it is, the less power
needed to maintain the battery and the longer it will last when main
power is gone. Refer to the section titled Battery Active Usage Vs
Actual Power Consumed for a better understanding of the 2 game
mechanics.

This next example uses the same end systems but has multiple power
sources and multiple batteries to support the same or more components.
It uses the Nih Core bypass battery backup and provides power to all the
different end systems through a single distributor. The number of end
systems you want to run and the amount of power they will consume will
dictate how much power you need to generate and the number of batteries
you need to support everything in the event of a power outage. If your
circuit needs 160rW, we will use 2 large batteries. If we need 470rw, we
will use 5 large batteries. DO NOT mix and match battery sizes.

 ![](images/image12.png)

Before it was said that the above example could support the same or more
components. The Nih Core really is meant to scale up to larger power
demands but let's say the demand is only 100, that means we have built
in some redundancy. 1 turbine or battery could be destroyed and the
circuit would still function as normal. This is an expensive way of
having redundancy but it does work. This is meant to be easily scalable
to any size power load but once we start to root combine batteries, we
should try to maximize the combined batteries potential by consuming as
much as possible. This means that if we have 2 large batteries, we
should try to use as much of the 200rW as possible. When batteries get
root combined, they do not share the load as one would expect.

For example, we have a circuit with 2 large batteries supporting a load
of 50. It would seem to make sense that 50 power divided by 2 batteries
equals 25 per battery, but rustricity doesn't work like that. That 50
power is taken from both batteries and is seen as Active Usage.
![](images/image128.png)

This means when we get to circuits that need more than 100 power, all
the batteries combined will show a max Active Usage. Active Usage is
used to calculate how fast a battery drains. If we are forcing batteries
to max drain then we might as well try to use as much as the combined
power the batteries will provide.

It is never good practice to mix and match different size batteries. A
large battery will last 4 hours, a medium battery will last 3 hours and
small batteries will last 15 minutes. If you mix and match, you can only
rely on maximum power for the amount of time the smallest battery will
last. For example, 2 large batteries and 1 medium for a total of 250rW.
For only 3 hours will you get 250, the last hour will only provide 200.
There are situations where mixing is useful, but not for the main
battery backup on a centralized circuit.

Centralized circuits are simple, easy to work with and scalable. On
paper, you can make a centralized circuit very large and consume a lot
of power. The reality is to produce a lot and store a lot of power, you
will need a lot of land to build it on. In this next example, on paper,
we have 9 turbines on the 10th floor with 9 backup batteries feeding 36
auto turrets divided by 9 per North, South, East and West sides. It also
has 3 HBHF Sensors per side, Search Lights on each side and a bunch of
lights. The circuit is only an example and is not using its full power
potential. It could include a grid of tesla coils, destruction
detection, a camera network, automatic doors, TC/Vending Machine and
storage monitoring, an indoor garden, a system that makes your base look
online when you are offline and much more. The point here is size, very
large.

![](images/image58.png)

It is not so easy to see, with a circuit this large, and the ability to
be much larger, how one would go abouts physically building this. It
would be possible to centralize the location of the battery backup and
distribution but the size of the base will probably call for multiple
wire extensions. Any component can be used to extend a wire. The idea is
to make that component as cheap as possible. Only consuming 1 power and
being the resource cheapest component is the Industrial Lights. They are
easy to integrate as base lighting giving them the perfect camouflage.
Decentralizing the locations of a centralized circuit is possible but
difficult especially on large bases. At a certain point, you may find it
easier to just decentralize the circuit itself along with the locations.
 

---

## Decentralized Circuits

Decentralizing circuits really comes down to how extreme you want to
take it. The idea behind decentralizing is adding security and
reliability by segmenting different systems and areas with their own
independent power supplies and backups. Keep in mind, the type of
battery backup you choose is up to you but for our examples, we will
stick with inlines because it takes up less room in the pictures.

The first example shows decentralizing by separating the different end
circuits with independent power supplies and battery backups. The Auto
Turrets get their own power supply and inline battery. Same for the SAM
sites, interior lights, exterior lights and HBHF grid, they all have
their own power supply and inline battery backup.

![](images/image55.png)

While decentralizing based on end circuits is an option, if the battery
powering that circuit gets destroyed, that entire circuit will become
disabled. Having all your auto turrets go offline during a raid is never
a good thing. A more secure option would be to decentralize by location.
To keep the idea simple for the next example, let's breakup a base into
5 sections, North, South, East, West and the roof. By giving each group
their own power supply and backup, it prevents the entire base from
going offline when raiders destroy both the power supply and battery
backup. Decentralizing the circuit makes it a lot easier to decentralize
the locations. Wire length is limited, so depending on the size of the
base, being able to put the power source, battery backup and
distribution in a location that minimizes the need to wire extensions is
very appealing. If the base is of a smaller size, putting the power
supply, battery backup and distribution on the North side that powers
the South side has the clear advantage that in the event raiders come
through the South side, when they hit the electrical room on the South
side, it only disables the North side of the base. It is recommended
that when needing to extend wires, if you can't put the extension
component in a protected area, use an industrial light and integrate it
into your base lighting.

![](images/image54.png)

## Hybrid Circuits

A hybrid circuit is one that both centralizes, for convenience, and
decentralizes, for security, different parts of the same circuit. While
it is more common to see hybridization between power sources and battery
backup, it can also be done with distribution. To help demonstrate this
concept, we have the following 3 examples. The first 2 are using Inline
Battery Backups. In each example, a Counter is used to both show the
available amount of power but also represents an end circuit like lights
or turrets.

This first example demonstrates decentralizing power with a centralized
backup. Keep in mind that Root Combiners do not spread the load between
batteries. This means that a circuit needing 50 power will force all the
batteries to have an active usage of 50.
![](images/decentralized-with-centralized-backup.png)
This kind of configuration is convenient to achieve a lot of power on 1
line but comes at the cost of not being able to take advantage of game
mechanics to minimize Active Usage on the batteries. Let's say you want
to power 18 Auto Turrets, it is possible to power 9 from 1 battery and 9
from the other while each battery only has an Active Usage of 91,
needing a power supply of 114 per battery for a total of 228. If we want
to power the same 18 turrets using the example from the picture, each
battery would be forced to have an Active Usage of 100, needing a power
supply of 125 per battery for a total of 250 minimum. The larger this is
scaled up, it is easy to see how much wasted power, time and materials
there are. That is why it is seen as unsustainable for use in situations
that are continuously online, however, if you have a circuit that spends
most of its time offline and there are long enough periods of time
between activity to let the batteries charge, then it becomes much more
practical just to get a lot of power on a single line.

In the next example we demonstrate centralizing power while
decentralizing the battery backup. This gives us the benefit of
convenience by combining all the power sources into a single line then
using Splitters, evenly divide that
![](images/centralized-with-decentralized-backup.png)
power between all batteries, or, like in the above picture, use an
Electrical Branch to give priority to 1 battery while evenly dividing
the remaining power between the other 2. This gives us the ability to
prioritize batteries and also take advantage of minimizing Active Usage
per battery depending on the circuit it is powering. This leads to a
lower material and labor cost and wastes less power.

In our 3rd example, we use a bypass battery backup known as the Nih Core
which natively is a centralized system but we decentralize the batteries
by dedicating them to specific systems. This is called the Decentralized
Nih Core.
![](images/image81.png)
It gives us the benefit of powering our circuits the majority of the time with the main power source while also providing security but separating the battery backup.  
In the event that the core or a battery is taken out, not everything goes offline.  
[ deadman switch link ]()
There is also an optional Switch included if the system ever needs to be turned off.  
The Switch is powered by a small battery limiting the amount of time the system can be off for.  
This prevents a team mate from turning things off and forgetting to turn
it back on.

---

# What is a Power Bus?

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

![](images/image61.png)

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

