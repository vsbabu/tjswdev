# TaskJuggler Template
TaskJuggler template for small teams, short release cycles

It took me some time to read the manual, make reports' template, get this to be useful as a manager and for team and stakeholders.
Over the course of time, the templates have been reduced a lot to make the daily planning/tracking to be much less time consuming and yet useful for everyone - a typical small team kind of setup.
Sharing my templates so that it may help you to get started.

Strongly suggest you go to www.taskjuggler.org and read intro on this wonderful piece of software.

## To Get Started

1. Go get TaskJuggler from www.taskjuggler.org. Installation is very easy.
2. Ensure that `tj3` is in the path
3. If you have `make` installed, just run `make`. Otherwise, look at Makefile and run tj3 manually
4. Open reports.html in browser. You can see how schedule is made (Overview), availability of people (People), tasks by people (Allocation) and backlog list (Backlog)
5. Run this again (if you use `make`, run `make clean && make`), and see the warnings in the output of tj3. This gives scheduling issues based on constraints defined.

Now, let us see how we can update this to suite your needs.

1. Bookmark TaskJuggler documentation! http://www.taskjuggler.org/tj3/manual/index.html
2. Edit `holidays.tji` and `resources.tji` to add your company's holidays and resources; their leaves etc.
3. Edit `Makefile` to change *somecompany* :)
4. Edit `plan.tjp` to adjust your regular working hours; project name, start date and duration - these are at the top.
5. Edit `plan.tjp` to add your tasks and allocation. I've found it much easier if you add complete 0 to every task. Of course, this will change to some percentage value when task is being worked upon.
6. If you have dependencies (only if task is really dependent upon some other task - not because people are not free yet), add it.
7. Remove the `now 2016-08-20`. This makes the date as that date - rather you should be checking it for today.
8. Run `make/tj3`. Observe warnings. Fix. Re-run. Check `reports/index.html` in browser.
9. Suggest doing this for 2-3 tasks first, reading the manual a bit and then checking results. Iterate.

## Suggested Use

1. I generally plan for fixed sprints; like every other Saturday is one sprint/release completion. The sample here is for every week.
2. Bucket tasks into each release. Too much fine grained, nested tasks will give you lots of power, but it also makes managing project equally time consuming.
3. Every day morning, follow up with team members (scrum standup could be one option) to mark completion percentage. TaskJuggler has support for effortremaining, but this is not yet production ready. Once that is there, I am planning to switch to that to make it much more easier to maintain.
4. Once updated, run `make/tj3` and share the `reports/*` with people
5. When you get new ideas, add to backlog
6. Once a sprint is completed (see *s01*), just move it to the bottom of *main* task so that it is easier to manage.


