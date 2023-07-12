install.packages("ggplot2")
library(ggplot2)
data <- read.csv("data/christmas_movies.csv")
ggplot(data, aes(x=release_year)) +
  geom_histogram(color="black", alpha=0.6) +
  labs(title="Movies released by year", x="Year released", y="Frequency")

ggplot(data, aes(x=rating, y=imdb_rating)) +
  geom_bar(stat="summary") +
  labs(title="Content rating vs IMDB rating", x="Content rating", y="IMDB rating")

ggplot(data, aes(x=imdb_rating, y=meta_score)) +
  geom_point() +
  labs(title="IMDB rating vs metacritic score", x="IMDB rating", y="Metacritic score")
