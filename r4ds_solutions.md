R4ds\_solutions
================
Kyle Howard
2021-03-29

## R for Data Science Solutions

I only began documenting my workings for the [R for Data science
textbook exercises](https://r4ds.had.co.nz) from Exercise 6 onwards.
This document serves as a way to remember the solutions and how I
arrived at them, and to help learn R markdown and github processes.

\#Geometric Objects, Exercise 6: \#Recreate the R code necessary to
generate the following graphs

library(ggplot2)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom\_point() +
geom\_smooth(se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom\_point() +
geom\_smooth(aes(group=drv), se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, colour = drv)) +
geom\_point() + geom\_smooth(aes(fill=drv), se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
geom\_point(mapping = aes(colour = drv)) + geom\_smooth(se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
geom\_point(mapping = aes(colour = drv)) + geom\_smooth(mapping =
aes(linetype=drv),se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
geom\_point(size=4, color = ‘white’) + geom\_point(mapping = aes(colour
= drv))

ggplot(data = diamonds) + geom\_bar(mapping = aes(x = cut))

\#3.7.1 Statistical transformation exercises: \#1 the default geom with
stat\_summary is geom\_pointrange (help tells you this ) ggplot(data =
diamonds) + stat\_summary( mapping = aes(x = cut, y = depth), fun.min =
min, fun.max = max, fun = median ) \#can also be written as: ggplot(data
= diamonds) + geom\_pointrange( mapping = aes(x = cut, y = depth), stat
= “summary”, fun.min = min, fun.max = max, fun = median )

\#2 What does geom\_col() do? how is it different to geom\_bar()?
??geom\_bar \#geom\_bar has the default stat\_count()

?geom\_col \#geom\_col has the default stat\_identity() which leaves the
data as is, it doesn’t count the frequency, and expects y values to be
set

\#3. is a silly question. There is a table in the exercise solutions

\#4. What variables does stat\_smooth() compute? What parameters control
its behaviour? ?stat\_smooth
