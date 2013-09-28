1---
layout: post
title: "combatting_draft"
description: ""
category: 
tags: [scratch]
---

Antipattern 1: Optimize Early 
 
Premature Optimization is likely the most famous software antipattern
and has been discussed ad-nasium for almost 40 years after Donald
Knuth's famous "root of all evil" quote. This has spawned countless
debates over optimization techniques and these have brought up some
good reasons not to over-invest in code optimization at the front-end
of the SDLC. These have been amply covered in the literature [see
citations below] but I want to call out in particular the effect that
optimizion often leads to obfuscation.

Increased complexity is the more expensive side-effects of 
over-zealous optimization. Optimizing almost always involves 
sophisticated techniques that when captured in code can be somewhat 
undecipherable. Which then affects maintainability, and the costs 
snowball from there. 

Beyond Code Tweaking

Premature optimization reaches beyond algorythm enhancement, code
tuning, and memory access. Some common and incipient optimizations can
sneak into the app lifecycle when no-one is looking.

Example: Consider a startup. It has the killer idea, already
prototyped and funded, which will undoubtably surpass twitter in
popularity. But time is of the essense.

To implement this, say the new engineering team needs a fast message
broker. App performance a massive scaling are primary requirements
given the almost certainty of success.

Messaging technologies are fast evolving and it makes sense to devote
someone on the team to spend a few day evaluating the various products
and come up with a recommendation. Given the requirements and future, 
broker performance is the primary focus in the evaluation. 

This evaluation is a natural step, and doesn't take a big hit, maybe a
day or two of engineer/architect time. 

Just Say No 

But I have a different suggestion: Skip the evaluation altogether,
save the one or two days (likely more for reasons we'll cover in
future articles), and instead use any old message broker that's
capable of forwarding your messages (which is pretty much all of them
unless you have wonky messages). Certainly skip any performance
evaluation.

Not only that, take these two days you saved (or any fraction of the
it) and devote it to measuring (repeatably) the performance that
you're concerned about. Write tests, get up to speed on performance
tools, build infrastructure to support tests: choose anything that
will help measure the performance of your application as it applies to
the bus.
 
With repeatable performance measurements you can instantly evaluate
your performance needs, know if your current architecture is adaquate,
and easily evaluate potential preplacements. Just as valuable, you can
use the measurements to evaluate future resource requirements.

Why?

OK, so how does one choose "any old" message broker. Well, this is the
whole point: Platform as a Service offerings commonly provide message
brokers options. I'm suggesting, take an existing PaaS, use its
broker, and ...


Why Platform as a Service

Platform as a Service (Paas) provides enterprises a fully fleshed-out
foundation from which to launch product development efforts. Often
PaaS offerings include a bundled message broker, and that's the point
of this article: use the bundled broker as the launching point for your
app.

This will allow you to get the application operational, stabilize the
data-flow and evaluate the archecture, while also thoroughly
measuring and analyzing its performance characteristics.

Then after the data-flow has stabilized, the app architecture has
gelled, and the application skeleton is has firmed up, you have a
basis from which to thoroughly evaluate the performance
characteristics of your application.

The alternative, of evaluating and choosing a specific message broker
as described above, is in my view "premature optimization" and you 

1. After you're able to see the behavior of the application,
oftentimes you discover that the choice of message broker makes little
difference to the overall application performance.

0. As often as not, any performance issuesthe Oftentimes the underlying message broker turns out

2. The app requirements frequently change dramatically after the
customer has seen the first revision of the application, possibily
negating any effort spent trying to find the "best" message broker.

3. 

[SIDEBAR]
Coding Techniques to Enable This

Of course, this requires you write your application in such a way that
the integration code to the message broker be independent of the
provider itself, but doing so is a common and suggested
practice. I.e., you should be doing this anyway.

The ideas presented above are a variation on the Minimal Viable
Product (MVP) theme presented by ...

It's so common and appealing to over-engineer a solution. 

------------------------------------------

Here are the ways that 

2. Count the ways we save time:

3.  (roll into 2)

4. Sidebar: coding practices

5. Mention MVP

6. Testing again

7. Show how app does scale, and how to integrate 3rd party brokers

8. Other Premature Optimizations affected by PaaS

9. Summary and teasers

3. Discuss several additional advantages to having deployed instantly 
involving testing, team understanding, more
 
4. I'll discuss practices that ensure the code is easily adaptable 
across brokers: this brings in the advantages of pologlotism and 
multiple frameworks, etc. 
 
5. Tie this with Minimal Viable Products and the additional
advantages 
achieved 
 
6. Stress further the importance of testing with repeatable and 
measurable results 

7. Show path to making sure the app does scale afterall,  how it's
simple to incorporate third party, 
external message broker
 

7. Summarize with more on how PaaS enables this rapid and performance,
and teasers for future articles.



------------------------------------------
Citations:
  http://www.bluebytesoftware.com/blog/2010/09/06/ThePrematureOptimizationIsEvilMyth.aspx
  http://ubiquity.acm.org/article.cfm?id=1513451
  http://en.wikipedia.org/wiki/Program_optimization

WEIGHT: http://www.grandcanyongateway.com/department/category/grand_canyon_skywalk
------------------------------------------

------------------------------------------
This is crazy!
http://www2.dupont.com/SafetyGlass/en_US/whats_new/grand_canyon_skywalk.html

   The Grand Canyon Skywalk glass floor can hold the weight of up to
120 people, and is designed to handle winds up to 100 miles per hour.
------------------------------------------
------------------------------------------
Overengineering is all-too-common, for the simple reason that
engineers like engineering. While it's commonly considered an
anti-pattern, there are times when over-engineering is perfectly
acceptible.

Take for example the platform with see-through floor reaching out over
the Grand Canyon, with 4000 feet of air between it and the Colorado
River, and vertical drops of 800 feet.

The structure itself holds 120 people, but can support ... get this
... 79 million pounds [need citation[].

That's like involve almost 400,000 people stacked vertically on each of the 120
standing on the floor.

I feel comfortable asserting this is over-engineering. Which is not a
bad thing, in this case, but can be.


Overengineering generally means building

Overengineering generally falls into one of these categories, the
first of which isnt't necessarily a liability (cost):

      * building more than required

* building something unneeded

Overengineering is a problem if:

1. practicing it has costs (delayed release, 

new functionait costs extra for functionality that will never be used or needed

2. it requires 

3. it causes actual harm (example below)

The second is to be avoided: a complete waste of time. 

But building more than required

Need Measurable/Quantifiable


------------------------------------------

Premature Optimization is a special case

------------------------------------------
------------------------------------------
Take for example the platform, built 5 years ago, that reaches out
over the Grand Canyon with 4000 feet of air between it and the
Colorado River and vertical drops of 800 feet.

It's meant to hold 120 people, but is structually rated for 79 million
pounds !()

To make that weight wihtout overcrowding the floor, each of the 120
folks would need almost 400,000 people on their shoulders.




mostly best-avoided.  or building more than is necessary :
Overengineering generally falls into one of these categories, the
first of which isnt't necessarily a liability (cost):

      * building more than required

* building something unneeded
 

It's worth examining siturations where overengineering occurs so as to
avoid them, or at least choose them wisely..
	  
To do so I'll look at Premature Optimization, a practice that often
results in overengineering of some sotr.

I'll then dive into scaling issues, which often drive the desire for
premature optimization.

It's not necessarily a problem. I'd guess that whatever extra they
payed to build to that capacity has been recouped multiple times sheer
sensationalism of the number. Wikipedia reports the capacity as the
weight of 71 fully loaded Boeing 747s.

EXAMPLE: startup: 

It's natural to, at the outset, spend extra effort evaluating message
brokers to determine which are the most capable of scaling.

Similarly, the cost of scaling an application goes up significanly the
later the effort to scale is initiated.



Too often, the high-scale requirements of web-based applications
result in "Premature Optimization" a common software antipattern that
often results in overengineering.

As such it's worth watching out for all types of over


 without equivalent
return. And often it does, which is why overengineering is generally
considered an antipattern.


Premature Optimiation


I'll focus on Premature Optiziation, which often involves
overengineering.


Optimizating early in the app lifecycle often results in
overengineering:


 striving for components to perform in a


building components or  systems to be more performant than they need
be, or much more common, building specific components are methods to
be




Optimization



 with without spending the days/weeks designing
an underlying system. Use the PaaS to enable this.




Summary:

 And here is where the effort you spent on performance measurement pays
off: you can better determine if you're not meeting performance
requiements, and you can better identify components that need
optimization, add the development effort backlog, and prioritize it.

The point here is that it pays to focus on scaling from day one: the
very first line of code you execute should be on a scalable foundation
of components and services. The combination of PaaS, with its bundled
services and sophisticated scaling mechisms, with performance tools
and tests, many of which can themselves be bundled with PaaS, gives
you a significat headstart in your application delivery process.




Instead of optimizing early, invest

Optimizing early in the SDLC can result in costly overengineering
efforts, that are best avoided. Optimization is more than code
tweaking: evaluating tools, services, and services for performance
also eat up valuable time that can goes to waste if the evaluation
wasn't needed.

Platform as a Service provides, out of the box, services, frameworks,
and libraries needed by your application. Build the first cut of as
much of your stack as possible using bundled technoglies

But optimization is often confused with scaling. Optimization should
be postponed as much as possible, while scaling should be a high
priority from day-one.


Design for scale. Repeatably measure performance. Run at scale from
day one.

Use the PaaS to 

The most damaging result needless opmization efforts is the generation
of unmaintainable code which can impact success at any time during an
application's lifecycle, including long after it's been deployed.

