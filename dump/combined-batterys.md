
in centralized.md at centralized-circuits it is speaking of root combining batterys,
but it is somewhat "lost in a paragraph", its own section would be cool,
maybe at the beggining or end of the batterys pages ? 

---

## Root Combining Batteries

~~it's a sin~~
When batteries get root combined, they do not split the load as one would expect.  
They cannot see each other, so each tries to power the whole circuit.  

> For example, in a circuit with 2 root combined batteries supporting a load of 50,  
  it would seem to make sense that 50 power divided by 2 batteries equals 25 per battery,  
  but rustricity doesn't work like that, those 50 power would be taken from both batteries
  and is seen as Active Usage. Both batteris would be draining from 50 power  

This means when we get to circuits that need more than 100 power,
all the batteries combined will show a max Active Usage,
which is used to calculate how fast a battery drains.
so if we are forcing batteries to max drain,
then we might as well try to use as much as the combined power the batteries will provide.

when using a ( Nih core )[ distribution.html#nih-core ],
it does not matter as much as the batteries are not supposed to be active all the time.

---

*copied from "centralized circuits section"*
When batteries get root combined, they do not share the load as one would expect. 

For example, we have a circuit with 2 large batteries supporting a load of 50. It would seem to make sense that 50 power divided by 2 batteries equals 25 per battery, but rustricity doesn't work like that. That 50 power is taken from both batteries and is seen as Active Usage. 

This means when we get to circuits that need more than 100 power, all the batteries combined will show a max Active Usage. Active Usage is used to calculate how fast a battery drains. If we are forcing batteries to max drain then we might as well try to use as much as the combined power the batteries will provide.

---

*-- Rainer Frost*
Root combining batteries is a special can of worms, which is why I am in general against doing so. 
Batteries cannot see each other, so each tries to power the whole circuit
As soon as your circuit draws more than 100 power, every single battery will work under full load.
Occasionally useful if you add some batteries on top if you expect losing some during a raid,
but it requires some planning ahead.
For the Nih core, it does not matter as much as the batteries are not supposed to be active all the time.
I am tracking down every single person who uses root combined batteries for some base lights though,
to spill a large box of Legos on their carpet at night. They deserve that and much more.

---

*and im now seeing that swift added this in the root combiner section,
so yeah i ll just link to that new section instead*

When combining batteries, the load is not evenly shared. For example,
let's say we have 2 batteries on a combiner feeding a circuit that
needs 50 power. Each battery will show an active usage of 50, not
25/25 to = 50.  Both will show 50. This means that once you get a
circuit that needs 101, both batteries will have a max usage with a
combined potential of 200. Try to use all 200 because both batteries
are draining at their max rate anyway.
