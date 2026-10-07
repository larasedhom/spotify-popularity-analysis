spotify <- read.csv("spotifyk.csv")
head(spotify)
str(spotify)
summary(spotify)
spotify6 <- spotify[, c("genre", "country", "popularity", "danceability", "energy", "tempo")]
head(spotify6)
names(spotify6)
table(spotify$genre)
table(spotify$genre, spotify$explicit)
summary(spotify[, c("popularity", "danceability", "energy", "tempo", "duration_ms")])
#histogram of popularity
ggplot(spotify6, aes(popularity)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +
  labs(title = "Histogram of Popularity",
       xlab = "Popularity",
       col = "Count") +
  theme_minimal()
#Bar Chart of Genres
library(ggplot2)
ggplot(spotify6, aes(factor(genre))) +
  geom_bar(fill = "steelblue") +
  labs(title = "Number of Songs per Genre",
       x = "Genre", y = "Count")
#Boxplot (Popularity by Genre)
ggplot(spotify6, aes(genre, popularity)) +
  geom_boxplot(fill = "red",
               color = "pink") +
  labs(title = "Boxplot Boxplot of
popularity by Genre", y = "Popularity") +
  theme_minimal()
#Scatter Plot (Danceability vs Popularity)
library(ggplot2)
ggplot(spotify6, aes(danceability,popularity)) +
  geom_point(color = "blue", size = 1) +
  labs(title = "Danceability vs Popularity",
       x = "Danceability",
       y = "Popularity") +
  theme_minimal()
#numerical summaries
mean(spotify$popularity)
median(spotify$popularity)
sd(spotify$popularity)
var(spotify$popularity)
min(spotify$popularity)
max(spotify$popularity)
#repeat for danceability
mean(spotify$danceability)
sd(spotify$danceability)