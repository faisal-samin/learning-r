'''
=== Code walkthrough 1 ===

* Basic commands
* Installing and loading packages
* Visualising with ggplot (scatterplots, barcharts)
'''

# Arithmetic in R
3 + 5
10 - 5
23 * 10
40 / 4
17 %% 4
sin(60) ^ 2

# Assigning variables
x <- 10
3*(x + 1) 

# Installing the tidyverse package (only needed once)
install.packages('tidyverse')

# Loading the tidyverse package (do this each time)
library(tidyverse)

'''
Data visualisation with ggplot
'''

# The tidyverse includes a dataset on fuel economy data that is saved to 'mpg'

mpg # preview data
View(mpg) # view full dataset
?mpg # see documentation and metadata

# Scatterplots
# X-axis: engine displacement (displ)
# Y-axis: highway miles (hwy)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# Mapping a third variable to a scatterplot (e.g. colour, alpha or size)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = class))

# Barcharts
# Count frequecies of each type (or class) of car

ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = class))

# Stacked barcharts with colour 

ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = class, fill = drv))

# Multiple geoms on the same chart

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + geom_smooth()

# See the ggplot cheat-sheet for more templates
# https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
