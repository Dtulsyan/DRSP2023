install.packages("tidyverse")
library(tidyverse)
data <- read.csv("data/christmas_movies.csv")
glimpse(data)
runtime <- data$runtime
mean_runtime <- mean(runtime, na.rm=T)
med_runtime <- median(runtime, na.rm=T)
range <- range(runtime, na.rm=T)
var <- var(runtime, na.rm=T)
stdev <- sd(runtime, na.rm=T)
iqr_runtime <- IQR(runtime, na.rm=T)

q1_runtime <- quantile(runtime, na.rm=T, .25)
q3_runtime <- quantile(runtime, na.rm=T, .75)

upper_limit <- q3_runtime + 1.5 * iqr_runtime
lower_limit <- q1_runtime - 1.5 * iqr_runtime

outliers = runtime[runtime < lower_limit | runtime > upper_limit]


runtime2 <- runtime[runtime >= lower_limit & runtime <= upper_limit]
plot.new()
boxplot(runtime)
boxplot(runtime2)

summary(runtime2)

mean_runtime2 <- mean(runtime2, na.rm=T)
med_runtime2 <- median(runtime2, na.rm=T)
