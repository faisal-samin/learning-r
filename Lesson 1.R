### Introduction to R 

# 1) Installing and running packages
# 2) Reading files
# 3) Filtering and sorting
# 4) Visualising

# # # # # # # # # # # # # # # # # # # # # # # # # #
# (1) Installing and running packages
# # # # # # # # # # # # # # # # # # # # # # # # # #

# You only need to install packages once on a system
install.packages("tidyverse")

# However, these packages need to be run everytime for each R session
library(tidyverse)

# # # # # # # # # # # # # # # # # # # # # # # # # #
# (2) Reading files, quickly getting info on your dataset
# # # # # # # # # # # # # # # # # # # # # # # # # #

# In R, there are various ways to read files, whether by accessing locally 
# saved files, databases or internet links. When accessing locally saved files, make 
# sure to identify your 'working directory' and amend this if necessary

getwd() # identify working directory

# set working directory
setwd("/Users/fasamin/Desktop/imdb-r")

# read data - dataset downloaded from https://www.kaggle.com/PromptCloudHQ/imdb-data
# Access the link for more info 
imdb <- read_csv('IMDB-Movie-Data.csv')

View(imdb) # Make sure the v is capitalised 

imdb # to view the data in the console, check if imported correctly 

# Some quick ways to get info on your dataset
names(imdb)
dim(imdb)
head(imdb)
tail(imdb)
summary(imdb)
count(imdb,Genre) # Quick summary table

# # # # # # # # # # # # # # # # # # # # # # # # # # #
# (3) Filtering and sorting, selecting
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# Selecting all 'pure' comedy films
comedy <- filter(imdb, Genre == "Comedy")
View(comedy)

# Numeric filter - big at the box office
blockbusters <- filter(imdb, `Revenue (Millions)` > 400.)
blockbusters

# Selecting just the name, revenue and rating
select(blockbusters, Title, `Revenue (Millions)`, Rating)

# Sorting by revenue, and then selecting the key columns
blockbusters_sorted <- arrange(blockbusters, `Revenue (Millions)`)
select(blockbusters_sorted, Title, `Revenue (Millions)`, Rating)

# Multiple conditions, notice the double equals
filter(imdb, Genre == "Drama" & Year == 2016)

# You can create new columns with mutate
imdb <- mutate(imdb, Difference = 10 * Rating - Metascore)

# In summary, the key functions for manipulating data are:
#   select, filter, arrange and mutate

# # # # # # # # # # # # # # # # # # # # # # # # # # #
# (4) Visualisation
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# ggplot2 is one of the main tools to creat visualisations in R.
# It implements the grammar of graphics which helps make syntax more intuitive and easy to understand.

# Scatterplot of Rating and Revenue
ggplot(data = imdb) +
  geom_point(mapping = aes(x = Rating, y = `Revenue (Millions)`))

# How ggplot works:
# 1) begin with a function ggplot(). This creates a coordinate system that you add layers to.
# 2) first argument is the is the dataset to use in the graph. 
# 3) the function geom_point() adds a layer of points to your plot 
# 4) each geom function in ggplot takes a mapping argument that defines how variables are mapped to 
#    visual properties. The mapping argument is always paired with aes().

# Let's add some colour to the previous scatterplot
ggplot(data = imdb) +
  geom_point(mapping = aes(x = Rating, y = `Revenue (Millions)`, colour = factor(Year)))

# Facet wrap allows you to combine multiple plots on the same graph
ggplot(data = imdb) + 
  geom_point(mapping = aes(x = Rating, y = `Revenue (Millions)`)) + 
  facet_wrap(~ Year, nrow = 3)

# Bar chart of Rating
ggplot(data = imdb) + 
  geom_bar(mapping = aes(x = Rating))

           