<!-- LLM PROMPT: This document contains all notes from an Emanote notebook.
Each note is separated by '===' delimiters and includes metadata headers.
- Source: The original file path in the notebook
- URL: The full URL where this note can be accessed
- Title: The note's title
- Wikilinks: All possible ways to reference this note using [[wikilink]] syntax

When referencing notes, you can use any of the wikilinks provided.
The base URL is: 
-->

<!-- Source: gallery.md -->
<!-- URL: /gallery -->
<!-- Title: gallery -->
<!-- Wikilinks: [[gallery]] -->

---
page:
  description: |
    Gallery

template:
  name: /templates/gallery
---

# gallery



===

<!-- Source: gallery/gallery-3dp.md -->
<!-- URL: /gallery-3dp -->
<!-- Title: 3dp gallery -->
<!-- Wikilinks: [[gallery/gallery-3dp]], [[gallery-3dp]] -->

---
page:
  description: |
    3DP Gallery

template:
  name: /templates/gallery-3dp

slug: gallery-3dp
---

# 3dp gallery


===

<!-- Source: gallery/gallery-apps.md -->
<!-- URL: /gallery-apps -->
<!-- Title: apps gallery -->
<!-- Wikilinks: [[gallery/gallery-apps]], [[gallery-apps]] -->

---
page:
  description: |
    Apps Gallery

template:
  name: /templates/gallery-apps

slug: gallery-apps
---

# apps gallery


===

<!-- Source: gallery/gallery-frc.md -->
<!-- URL: /gallery-frc -->
<!-- Title: frc gallery -->
<!-- Wikilinks: [[gallery/gallery-frc]], [[gallery-frc]] -->

---
page:
  description: |
    FRC Gallery

template:
  name: /templates/gallery-frc

slug: gallery-frc
---

# frc gallery


===

<!-- Source: index.md -->
<!-- URL: // -->
<!-- Title: michaelbaguilar -->
<!-- Wikilinks: [[index]] -->

---
page:
  description: |
    Personal website of Michael Aguilar

template:
  name: /templates/home
---

# michaelbaguilar



===

<!-- Source: wiki.md -->
<!-- URL: /wiki -->
<!-- Title: wiki -->
<!-- Wikilinks: [[wiki]] -->

---
order: 2
---

# wiki

(almost) everything I know about FRC 

WIP

===

<!-- Source: wiki/design-general.md -->
<!-- URL: /wiki/design-general -->
<!-- Title: design general -->
<!-- Wikilinks: [[wiki/design-general]], [[design-general]] -->

---
slug: wiki/design-general
order: 2
---

# design general

note is heavily WIP

## michael's giga list of strategic design do or dies 

aka the driver biased golden rules

### 0. general takes
  - strategic design should be incredibly driver biased
    - if the driver has to play operation to **pick up** a game piece it's not fun
    - if the driver has to play operation to **place** a game piece it's not fun
    - the driver should be able to "drive it like they stole it" and not be afraid of breaking it
      - low cg
    - if you can't get a week of drive practice minimum you are designing more than you can handle
      - drive practice is everything
      - if your robot can't perform as it was designed to do, you aren't playing the game
  - but overall elite strategic design is simple: make a robot that wins 99% of your matches in auton
    - a robot purpose built to win auton usually has all the bells and whistles a driver should want
    - winning in auton means the rest of the match is relaxed
    - Teams that design to perform well in auton usually place high
      - lots of simple strategic design micro you can do to make ur robot better in auton: what intake side vs outtake side, how you hold the piece, how many motions it takes for the robot to score, etc
  - leave **nothing** to chance, control everything **within your resources / capabilities** 

### 1. driver setup
  - one driver only, always, no exceptions
    - if your robot requires 2 drivers it's probably too complicated
    - you should have the programming resources to automate whatever robot you build to be able to fit it on one controller 
    - operator controller is fine for debug / backup stuff but the robot should be able to be driven off the main controller in most cases; in some games you really want a second human player instead
  - 4 year drivers
    - example: parker
  - hot take: when choosing a driver, choose the kid with the biggest ego
    - the best drivers have the biggest egos
    - the people who perform best under pressure are usually a little insane
    - the kids that pick up the controllers the fastest are usually the ones that care the most
  - swerve
    - that is all
  
### 2. software
  - frc is now a software game: https://youtu.be/vGajw5-vbo8?si=zi4d7QjN0jgQmHaw 
    - However the foundation is set with mechanical robustness
    - Good software can make a decent mechanical robot great
      - a simple mechanical robot with complex software is lightweight
      - Modern frc software allows you to get away with very simple architectures that would have been incredibly troll a decade ago
        - Simple architecture means it’s done faster which means it can be programmed earlier
    - The advent of April tags means a lot of actions that were once driver skill checks are now just programming automation skill checks

## design wisdom (by phase)

### ideation

- all design team members must know the [[golden-rules]] by heart / the preachings of karthik in effective first strategies

### sketching

- <mark>sketch it on paper before you cad it!!! cad software can get in the way of ideas (sketch everything)</mark>
- when master sketching, don't forget starting config doesn't have to be the same as idle config, like 2910 2023/25 where the arm starts at a 45 but idles flat

**pick n' place specific wisdom:**
  - it's called pick and **place**, not pick and shoot, pick and lob, pick and drop
    - baits: 2025 coral shooters, 2019 ball shooters, 2023 cone shooters, etc
    - this is usually because of the precision required, pnp games are more about precision than raw speed; being fast means nothing if you drop pieces (especially if it's a one game piece at a time game)

### prototyping

- start with simple tested frc design before doing anything specialty
    - for example with intakes: try to make good ol compliant wheels or silicone rollers work first before doing any specialty wheels or anything, alpha robot can be super simple standard design before comp robot
    - throwing an ri3d intake onto the alpha robot just to have something by week 1 for autons
- prototyping with a purpose: making sure that we aren't making meme prototypes that don't actually prove anything (2017 8020 shooter in derek's driveway), 2020 shooter is acceptable (see google photos)
    - important things to test: material types, geometry, subsystem archetypes (catapult vs flywheel)
    - not important things: can a spinny wheel shoot a ball (answer is most likely yes)
- 2056 word of advice: make decisions early, more time to regret them later (maximizing time to execute plan), easy to get stuck in analysis paralysis

### comp robot design

**big picture ideas:**

- Don’t reinvent the wheel in the cad stage, better to do it after you get a working robot
    - 2018 v1 elevator was cringe and unncessary
- Transparent volumes for electrical go / no go zones in the cad model
- always be reevaluating where to put weight/strength
    - It’s ok to sacrifice some stiffness if you can use the weight on other things 

### manufacturing / assembly

- before machining / assembling stuff, check check and triple check, or even plan ahead and make an assembly guide
    - that one time it took way too long to assemble the 2023 v1 intake

### iteration
- You can make more 5% optimizations than you think, a rebuild isn’t always the correct play, and making a high ceiling archetype from the start isn’t always the correct play
- chase constant improvements no matter how little
    - A lot of the mid-tier-but-could-be-great teams have a lot of things that are like 6-8/10 on their robot but could be 10/10 with a little work
    - That being said don’t make changes unless they are well tested
    - The season is a marathon not a race

## random ideas (sort later)

- Minimizing dofs is important, but if the mechanism gets to a certain point of complexity, it might be better to just add another dof (3005 2023)
- Handoffs are a high coordination risk medium reward type thing 
- have a mechanism do 2 tasks that require similar motions when possible (and not too complex)
    - 2056 2016 intake + fries manipulator
    - 2910 2022 hood climber 
    - random thought based off 1678 intake pivot from 2024 (or my mental model off it): use pivot jack shaft (one with small sprocket) as also a roller dead axle shaft for indexer/conveyor
- think deeply whether you want to have the intake be the same side as the scoring mechanism or not, the answer is not always obvious
    - key idea is with swerve, you want the motors to be going full send when possible, so that means not turning when possible
- you can reduce mechanical movement with geometric elegance

- if the human players can't deliver game pieces to the ground (ie there are no intentional ways for pieces to end up on the ground), then picking up game pieces off the ground is bad because good teams don't drop pieces
- rolly grab literally everything
    - 2910 2025
    - 1323 2019 hatch mech
- Do more passive dofs
    - 254 2025 off-season u catcher thingy
    - 971 2024 note path where the route was determined by the elevator height (might not be remembering that correctly but check it again)
    - 581 2026 indexer that moved up as intake went in, good concept in general but bad in this specific case because when the intake got smashed in, the indexer could jam up  


### reducing mechanical movement with geometric elegance
- <mark>buffer spot / breakpoint for a gamepiece should be as close to the exit point of each mechanism as possible</mark>
      - [https://youtu.be/DAxiSBVn5yg?si=iU01QHVHrZukeC4z](https://youtu.be/DAxiSBVn5yg?si=iU01QHVHrZukeC4z) 
      - ie: the cube takes too long to move from the pooper from their buffer spot when it should be closer 

**examples:**
- 2056 climb alignment 2025, just hug the wall and slide no lineup effort required
- 2019 intakes that bring piece right to a scoring posture without any elevator movement
  - 148 / 3015
  - same concept, 2025 118, where they can score l2/l3 without any elevator movement, only pivoting their arm (missed this in our master sketch)
    - rush 2025 robot bad because it does the opposite, the pre-scoring pose is guaranteed one movement away from scoring pose (arm always has to twist) so the time is wasted when the elevator goes up
- 254 amp mech hands off the note vertically but the scoring position is at an angle
    - ![87bef6f8-c792-47f9-b135-a613b369a6d2.png|563.3333129882812](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/87bef6f8-c792-47f9-b135-a613b369a6d2.png)


### random mechanical concepts?

- don't use belts on position subsystems (intake pivot, etc) to prevent inevitable belt slippage, they're also bad because they're springy (backlash)
- If something is gonna be experiencing a shock load don’t have a belt in the load path (belt teeth can shear
- use more square nuts when designing an inserted/press in nut on a 3dp parts since they’re less likely to round out
- definitely should use \#10 babby standoffs more (5/16" OD)
    - shoutout to aluminumspacers.com!
    - maybe do 3 wall nylon standoffs as a replacement ?
- rivet hat, bearing hat, bolt hats are all tools you should consider for retaining bearings
- live axle vs dead axle things to consider
    - Dead axle easier to mount and can be more compact on the plate side (just need a bolt hole) 
    - live axle (bean 2026 indexer) general means simple plugs, throw them in and forget
- 6338k582 good for spline id (spline mounted on .75” od dead axle)
    - Actually don’t prio this there’s probably easier ways to get ur kebab stack rotationally linked that don’t weigh as much
- cf round tubing is approx 50% weight reduction (vs 6061) at similar wall thicknesses 🥀 p2w ($50 for 3’ vs $22.5 for 3’), however it's more brittle

- ![be4445c3-7b09-4385-a25d-dac3c4f51086.png|861](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/be4445c3-7b09-4385-a25d-dac3c4f51086.png)


### random team specific nifty stuff
- 1323 chain tensioner
    - ![](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/f001b1c4-df94-41c8-b8f3-8d41b6165e24.png)
- 2910 really likes to throw a lot of motors at a problem to make it go away, 2026 indexer+hopper uses 4 krakens at 1:1 which is wild
- 1678 gears are double stacked and intentionally clocked out of phase to minimize backlash on critical subsystems (not shown in screenshot but yea)

    - ![204a7e62-61f2-4412-a66b-49aed12615bb.png|299](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/204a7e62-61f2-4412-a66b-49aed12615bb.png)

    - ![2394c762-d591-40bd-ae51-d3fca5185080.png|471](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/2394c762-d591-40bd-ae51-d3fca5185080.png)
- 971 2017 magical floor intake - [https://youtu.be/h-AZPGTwugU?t=13](https://youtu.be/h-AZPGTwugU?t=13) 
- 148 choo choo / climber - [https://youtu.be/_hTyXQUgYLE?t=109](https://youtu.be/_hTyXQUgYLE?t=109) 
- [THIS TURNED SUPER META SINCE I WROTE IT DOWN] 1678 roller design - [https://www.chiefdelphi.com/t/1678-citrus-circuits-2023-cad-and-code-release/437632/30?u=michael.aguilar](https://www.chiefdelphi.com/t/1678-citrus-circuits-2023-cad-and-code-release/437632/30?u=michael.aguilar) 

    - Honestly just look through the entire cad: [https://www.chiefdelphi.com/t/1678-citrus-circuits-2023-cad-and-code-release/437632/59](https://www.chiefdelphi.com/t/1678-citrus-circuits-2023-cad-and-code-release/437632/59) 

    - 2022 robot basically shows how much they care about low cg, every mechanism is belted to a motor really low on the robot
- 254 climber bending

    - ![f2e8897d-7f84-4e30-aced-90c2cb702ed5.jpg|526.59375](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/f2e8897d-7f84-4e30-aced-90c2cb702ed5.jpg)
- High tide shim tape tip and roller design

    - [https://www.chiefdelphi.com/t/team-4414-hightide-2023-robot-tsunami/428584/222?u=michael.aguilar](https://www.chiefdelphi.com/t/team-4414-hightide-2023-robot-tsunami/428584/222?u=michael.aguilar)

- 254 2024 pizza box spindexer uses magnets to align top bottom plates on removable part

- Strain relief [https://www.chiefdelphi.com/t/what-are-your-experiences-with-anderson-powerpoles-vs-wagos/444693/6?u=michael.aguilar](https://www.chiefdelphi.com/t/what-are-your-experiences-with-anderson-powerpoles-vs-wagos/444693/6?u=michael.aguilar) 

- Citrus composite intake thing is mainly just so that the if the polycarb shatters then there's something holding it together-ish (the stiffness impact toughness thing lowkey fake)

    - ![a2fc429a-8637-4e25-a522-49d5dc0b3ff1.png|348](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/a2fc429a-8637-4e25-a522-49d5dc0b3ff1.png)

===

<!-- Source: wiki/golden-rules.md -->
<!-- URL: /wiki/golden-rules -->
<!-- Title: golden rules -->
<!-- Wikilinks: [[wiki/golden-rules]], [[golden-rules]] -->

---
slug: wiki/golden-rules
order: 1
---

# golden rules

## mike corsetto's golden rules:
- Keep it simple
- Steal from the best, invent the rest
- Use a proven drivetrain
- Rolly grabbers / touch-it, own-it
- Fail faster

## karthik's golden rules
- always build within your team's limits
- if a team has 30 units of robot and functions have a maximum of 10 units, it is better to have 3 functions at 10/10 than 5 at 6/10

## high tide golden rule
- you can always be 1% better, faster, etc

## bean golden rule
- what's next


===

<!-- Source: wiki/mechanisms.md -->
<!-- URL: /wiki/mechanisms -->
<!-- Title: mechanisms -->
<!-- Wikilinks: [[wiki/mechanisms]], [[mechanisms]] -->

---
slug: wiki/mechanisms
order: 3
---

# mechanisms

asdfasdf

table of contents

1. [[mechanisms-intakes|intakes]]

===

<!-- Source: wiki/mechanisms/mechanisms-bumpers.md -->
<!-- URL: /wiki/mechanisms/bumpers -->
<!-- Title: bumpers -->
<!-- Wikilinks: [[wiki/mechanisms/mechanisms-bumpers]], [[mechanisms/mechanisms-bumpers]], [[mechanisms-bumpers]] -->

---
slug: wiki/mechanisms/bumpers
order: 6
---

# bumpers

[REDACTED]

BUMPER TECH

STICKY STUFF ON BUMPERS

- using it to intake pieces on that side of the bumper more effectively (4414 2022) / (971 2017)
- PLASTI DIP ON 4TH BOTS (1833 2026)
- tbone era (logomotion): slick on side, rough on front and back so you can tbone but slip out 
  - prolly only relevant if there's another active/inactive cycle mechanic in the future where you want to be playing defense


[/REDACTED]

===

<!-- Source: wiki/mechanisms/mechanisms-climbers.md -->
<!-- URL: /wiki/mechanisms/climbers -->
<!-- Title: climbers -->
<!-- Wikilinks: [[wiki/mechanisms/mechanisms-climbers]], [[mechanisms/mechanisms-climbers]], [[mechanisms-climbers]] -->

---
slug: wiki/mechanisms/climbers
---

# climbers

- buddy climb is a bait for every team except for those on the epa front page, dont do it

    - if buddy climbing, make fake hooks that you can bring to other pits and see if they are compatible

- Buddy climb fork deployment also engages anti backdrive for spool?

## cool things cool teams have done

- 2056 wheelie bar was only driven down by a winch, only thing keeping it up were 2 tiny cf springs
    - ![](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/b9fe1cf5-bd98-42e5-bf04-484136122c64.png)

- Climber measuring tape but better: fish tape

    - see 118 2020 climber

- [https://www.chiefdelphi.com/t/team-254-presents-2023-breakdown-technical-binder-code-q-a/443167/36?u=michael.aguilar](https://www.chiefdelphi.com/t/team-254-presents-2023-breakdown-technical-binder-code-q-a/443167/36?u=michael.aguilar) 

    - 254 virtual block and tackle climber

===

<!-- Source: wiki/mechanisms/mechanisms-elevators.md -->
<!-- URL: /wiki/mechanisms/elevators -->
<!-- Title: elevators -->
<!-- Wikilinks: [[wiki/mechanisms/mechanisms-elevators]], [[mechanisms/mechanisms-elevators]], [[mechanisms-elevators]] -->

---
slug: wiki/mechanisms/elevators
---

# elevators

- Up and over elevator is probably better than sideways from a structural standpoint
    - Sideways can limit intake iteration to some extent
    - Depends on game though
- prepunched tubing on an elevator lowkey makes u look like a noob lmao, either do the circle cheese, milled triangles, or keep it clean
    - odd saying this but referencing the 1678 elevator with punched tube later but whatever i said what i said

## examples

- 1678 elevator cad has exact fits on bearings, no tolerance between tube surface and bearing

    - ![66406b4a-6443-4fff-a9ad-12f0dca61b71.png|386](https://images.amplenote.com/6f070504-e871-11ed-8539-b69062a3be3e/66406b4a-6443-4fff-a9ad-12f0dca61b71.png)

    - joints can be relatively simple - idk if those plates are steel though lowkey could be for stiffness?

===

<!-- Source: wiki/mechanisms/mechanisms-ho-se-in.md -->
<!-- URL: /wiki/mechanisms/hoppers-serializers-indexers -->
<!-- Title: hoppers, serializers, and indexers -->
<!-- Wikilinks: [[wiki/mechanisms/mechanisms-ho-se-in]], [[mechanisms/mechanisms-ho-se-in]], [[mechanisms-ho-se-in]] -->

---
slug: wiki/mechanisms/hoppers-serializers-indexers
---

# hoppers, serializers, and indexers

- Gamepiece hoppers are a bait if you can’t hold unlimited pieces

    - also serializers don't have to be zero gap between game pieces as long as the throughput is fast enough (and there's enough queue space)

    - serializers should contact a ball on opposite faces rather than roll with a singular top roller, otherwise it will jam (2910 2020 serializer)

- 2025 bean funnel learning: higher durometer star wheels apply a larger force vector, can use it for centering by high durometer in middle of roller and low on ends
  
    - star wheels slip/skip as the piece is being intaked -> higher durometer star wheels slip less and lower ones slip more


## examples



===

<!-- Source: wiki/mechanisms/mechanisms-intakes.md -->
<!-- URL: /wiki/mechanisms/intakes -->
<!-- Title: intakes -->
<!-- Wikilinks: [[wiki/mechanisms/mechanisms-intakes]], [[mechanisms/mechanisms-intakes]], [[mechanisms-intakes]] -->

---
slug: wiki/mechanisms/intakes
order: 1
---

# intakes


## RULES OF INTAKES
- if it don't suck, it sucks
  - if you can't consistently manipulate the game piece you aren't playing the game
  - your robot needs a wide intake that actually works, the intake is everything
  - it shouldn't just suck, it should abduct -> bean's competitive advantage in 26 was the fact that the intake inhaled pieces off the field even when the robot was driving full speed
- wide(asterisk) intakes that actually work, the intake is everything
    - doesn't necessarily have to be super wide if u always pick up from hp in specific conditions, but generally good (2910 2023 vs most 2017 designs)
      - in both contexts though the same takeaway is lowering driver precision, wide intakes in 2023 would hit on the double sub, whereas wide intakes in 2017 made it easier to drop the gear
    - 2024, our intake is wide enough to make it easier for the driver, but also narrow enough to not be able to accidentally intake 2 at once
  - the robot should be able to slam into the hp station to load pieces, don't make it do any whacky alignment
  - Outer intake roller generally should be faster than your robot, inner one higher torque if the game piece is heavier
- 2x speed so robot at full speed is net positive intake speed still
  - kinda fake u only need slightly net positive? 2026 concept was just full send basically make the intake a shooter 
- Star wheels are kinda fake (but are lightweight, fine to use in an intermediate point in a conveyor but don't rely on it for good contact)
    - Good intaking rollers have compliance that increases the contact area
        - So therefore what about surrounding a polycarb tube with a multi layer lasagna? Soft compliant foam w/ adhesive backing, and then layered on top is a grippy silicone rubber w/ adhesive backing? Or cat tongue outer layer

## examples

- Before you get baited into designing the 254 2023 rack and pinion just look at 971 2019
    - 254 rack teeth can break: 2026 they had to switch to a titanium srpp sandwich (see btb)
- look at 2024 citrus intake: Citrus used the round tube + tube nuts for the front roller and hex for the lower rollers
- when making a dustpan the back edge can be bent, you don't have to do some weird attachment like 2024 (see 118 2023 reveal video)
- welding polycord and doing the silicone push-on of doom: [https://youtu.be/fYKsIe-yMrA?si=CW8PRTlg3Cf7ZA4D](https://youtu.be/fYKsIe-yMrA?si=CW8PRTlg3Cf7ZA4D) 
- 254 intake principles 
    - [https://www.chiefdelphi.com/t/besiktas-rsports-9483-2023-off-season-build-blog/440340/15?u=michael.aguilar](https://www.chiefdelphi.com/t/besiktas-rsports-9483-2023-off-season-build-blog/440340/15?u=michael.aguilar) 
        - Roller material: [https://www.chiefdelphi.com/t/besiktas-rsports-9483-2023-off-season-build-blog/440340/14?u=michael.aguilar](https://www.chiefdelphi.com/t/besiktas-rsports-9483-2023-off-season-build-blog/440340/14?u=michael.aguilar) 
- 254 intake thread  [https://www.chiefdelphi.com/t/how-do-these-254-mechanisms-work-bearing-retention/409093](https://www.chiefdelphi.com/t/how-do-these-254-mechanisms-work-bearing-retention/409093) 


===

<!-- Source: wiki/notable-matches.md -->
<!-- URL: /wiki/notable-matches -->
<!-- Title: notable matches -->
<!-- Wikilinks: [[wiki/notable-matches]], [[notable-matches]] -->

---
slug: wiki/notable-matches
order: 4
---

# notable matches

goated matches

- curie 2023 f2 148 clutch

    - clutch gene

- 2415 vs 1678 2017 Einstein

    - wincon perfection

- 1717 2012 cvr 1v9 vs poofs madtown

    - [https://youtu.be/w8EaPRjwHRg](https://youtu.be/w8EaPRjwHRg) 

    - just be better

- 27 all 2026 season

    - W Women drivers

- 2468 arch playoffs

    - 2x Choke of a lifetime