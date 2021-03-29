#Geometric Objects, Exercise 6:
#Recreate the R code necessary to generate the following graphs
library(ggplot2)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(aes(group=drv), se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, colour = drv)) + 
  geom_point() + 
  geom_smooth(aes(fill=drv), se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv)) + 
  geom_smooth(se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv)) + 
  geom_smooth(mapping = aes(linetype=drv),se=FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(size=4, color = 'white') +
  geom_point(mapping = aes(colour = drv))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

#3.7.1 Statistical transformation exercises: 
#1 the default geom with stat_summary is geom_pointrange (help tells you this )
ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.min = min,
    fun.max = max,
    fun = median
  )
#can also be written as:
ggplot(data = diamonds) +
  geom_pointrange(
    mapping = aes(x = cut, y = depth),
    stat = "summary",
    fun.min = min,
    fun.max = max,
    fun = median
  )

#2 What does geom_col() do? how is it different to geom_bar()?
??geom_bar
#geom_bar has the default stat_count()

?geom_col
#geom_col has the default stat_identity() which leaves the data as is, it doesn't count the frequency, and expects y values to be set

#3. is a silly question. There is a table in the exercise solutions

#4. What variables does stat_smooth() compute? What parameters control its behaviour?
?stat_smooth


