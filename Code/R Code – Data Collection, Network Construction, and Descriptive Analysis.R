### DDPS - Nord Stream sabotage discourse

# Load packages
library(readxl)
library(dplyr)
library(reactable)
library(glue)
library(stringr)
library(httpuv)
library(ggplot2)
library(readr)
library(tidytext)
library(tidyverse)
library(SnowballC)
library(quanteda)
library(sjPlot)
library(magrittr)
library(ggplot2)
library(academictwitteR)
library(data.table)
library(igraph)
library(lubridate)

# Connect to Academic Twitter API and collect data (personal key for privacy reasons removed)
nordstream_tweets <- get_all_tweets(query = c("#NordStream"), 
                                start_tweets = "2022-09-26T00:00:00Z", 
                                end_tweets = "2023-03-12T00:00:00Z",
                                data_path = "data/",
                                bind_tweets = FALSE,
                                n = Inf)

# Transform dataset into easier-to-read format and save as CSV
tweets <- bind_tweets(data_path = "data/")
tidy_tweet_df <- bind_tweets(data_path = "data/", output_format = "tidy")
write_as_csv(
  tidy_tweet_df, file_name = "20230312_Nordstream_df.csv", 
  prepend_ids = TRUE, na = "", 
  fileEncoding = "UTF-8"
)

# Load dataset
Nordstream_df <- read_csv("~/Desktop/20230312_Nordstream_df.csv")

# Filter for German and English-language Tweets
Nordstream_df_lang <- filter(Nordstream_df, lang %in% c("en", "de"))

# Data cleaning
Nordstream_df_lang$author_id <-gsub("x","",as.character(Nordstream_df_lang$author_id))
Nordstream_df_lang$sourcetweet_author_id <-gsub("x","",as.character(Nordstream_df_lang$sourcetweet_author_id))
Nordstream_df_lang$tweet_id <-gsub("x","",as.character(Nordstream_df_lang$tweet_id))

# Create network
network <- filter(Nordstream_df_lang, retweet_count > 0) %>% 
  select(author_id, sourcetweet_author_id) %>%
  filter(!is.na(sourcetweet_author_id)) %>% 
  graph_from_data_frame()

# Create network graph file for Gephi
write_graph(simplify(network),  "20230312_network.gml", format = "gml")

# Load modularity dataset derived from Gephi
Nordstream_modularity <- read.csv("~/Desktop/Nordstream_modularity_data.csv",
                                  stringsAsFactors = FALSE)
Nordstream_modularity$name <- as.character(Nordstream_modularity$name)
Nordstream_modularity <- rename(Nordstream_modularity, author_id = name)
Nordstream_modularity$author_id <-gsub("x","",as.character(Nordstream_modularity$author_id))

Nordstream_class_data <- merge(x = Nordstream_df_lang, y = Nordstream_modularity[, c("author_id", "modularity_class", "pageranks")], 
                                by = "author_id", all.x = T)

Nordstream_class_data <- rename(Nordstream_df_lang_mod, community_id = modularity_class)

# DISCLAIMER: This is the step were our Python code begins (for topic modeling)
# Load dataset (network statistics derived from Gephi)
Nordstream_class_data <- read_csv("~/Desktop/Nordstream_class_data.csv")
Nordstream_class_data <- rename(Nordstream_class_data, community_id = modularity_class)
unique(Nordstream_class_data[c("author_id")])

# Turn of scientific notation feature
options(scipen = 999)

# Top communities (Tweets)
Nordstream_class_data %>% count(community_id, sort = TRUE) %>% head(10) 

# 180: 178486 Tweets / 40.0 %
# 106: 90120 Tweets / 20.2 %
# 246: 29830 Tweets / 6.7 %
# 1029: 26485 Tweets / 5.9 %
# 271: 24455 Tweets / 5.5 %
# 479: 22914 Tweets / 5.1 %
# 771: 12130 Tweets / 2.7 % 
# 232: 10303 Tweets / 2.3 %

# Create community subsets
com_180 <- filter(Nordstream_class_data, community_id == "180") # 1st 
com_106 <- filter(Nordstream_class_data, community_id == "106") # 2nd
com_246 <- filter(Nordstream_class_data, community_id == "246") # 3rd
com_1029 <- filter(Nordstream_class_data, community_id == "1029") # 4th
com_271 <- filter(Nordstream_class_data, community_id == "271") # 5th
com_479 <- filter(Nordstream_class_data, community_id == "479") # 6th
com_771 <- filter(Nordstream_class_data, community_id == "771") # 7th
com_232 <- filter(Nordstream_class_data, community_id == "232") # 8th

# Top tweeting users
Nordstream_class_data %>% count(user_username, sort = TRUE) %>% head(10)

Top_pr_users <- Nordstream_class_data[!duplicated(Nordstream_class_data$user_username), ]

# Top pagerank users
Top_pr_users %>% group_by(user_username) %>%
  summarise(tot = pageranks) %>% 
  arrange(desc(tot)) %>%
  print(n = 30)

Most_followed_users <- Nordstream_class_data[!duplicated(Nordstream_class_data$user_username), ]

# Most followed users (≠ most important users)
Most_followed_users %>% group_by(user_username) %>%
  summarise(tot = user_followers_count) %>% 
  arrange(desc(tot)) %>%
  print(n = 50)

# Create Tweet histogram (general)

Nordstream_tweet_df <- Nordstream_df_lang

Nordstream_tweet_df <- Nordstream_tweet_df %>%
  mutate(tweet_time = as.Date(created_at, "%y.%m.%d"))

# Calculate descriptive statistics
summary(Nordstream_tweet_df$tweet_time)
names(sort(-table(Nordstream_tweet_df$tweet_time)))[1] # Mode = 2022-09-28
Nordstream_tweet_df %>% count(tweet_time, sort = TRUE) %>% head(5)

ggplot(Nordstream_tweet_df, aes(tweet_time)) + geom_area(stat = "bin", bins = 154,
                                                   color = "black", fill = "steelblue2") + 
  labs(x = "Year and month", y = "Number of tweets") +
  coord_cartesian(ylim = c(0, 35000)) +
  theme_bw() + 
  theme(plot.title = element_text(hjust = 0.5), plot.margin = margin(10, 10, 10, 10)) +
  scale_x_date(date_breaks = "month", date_labels = "%m-%Y",
               limits = c(ymd("22-09-25"), ymd("23-03-12"))) +
  geom_vline(xintercept = as.numeric(as.Date(c("2022-09-26", "2022-12-17" , "2023-02-08", "2023-03-07"))), 
             color = "red", lwd = 0.5, linetype = 2) + 
  geom_text(aes(x = x, y = y, label = label), 
            data = data.frame(x = ymd("2022-09-27"), y = 27500, label = "Nord Stream pipelinies\nare sabotaged"),
            angle = 90, size = 3, vjust = -0.5, inherit.aes = FALSE) + 
  geom_text(aes(x = x, y = y, label = label), 
            data = data.frame(x = ymd("2022-12-17"), y = 27500, label = "Mick Wallace (MEP) suspects US\nbehind sabotage in plenary speech"),
            angle = 90, size = 3, vjust = -0.5, inherit.aes = FALSE) +
  geom_text(aes(x = x, y = y, label = label), 
            data = data.frame(x = ymd("2023-02-08"), y = 27500, label = "Seymour Hersh's\n'investigative' report appears"),
            angle = 90, size = 3, vjust = -0.5, inherit.aes = FALSE) +
  geom_text(aes(x = x, y = y, label = label), 
            data = data.frame(x = ymd("2023-03-07"), y = 27500, label = "News report about alleged involvement\n of pro-Ukrainian group appears"),
            angle = 90, size = 3, vjust = -0.5, inherit.aes = FALSE)

# Tweet density plot (top communities)

Nordstream_class_data <- Nordstream_class_data %>%
  mutate(tweet_time = as.Date(created_at, "%y.%m.%d"))

Nordstream_class_data$community_id_f <- as.factor(Nordstream_class_data$community_id)

top8com <- filter(Nordstream_class_data, community_id_f %in% c("180", "106", "246", "1029", 
                                                               "271", "479", "771", "232"))

my_colors <- c("#FF99FF", "#66CCFF", "#33FFCC", "#66CC00", "#333333", "#FF6666", "#FF9933", "#9933CC")

ggplot(top8com, aes(x = tweet_time, fill = community_id_f)) +
  geom_density(alpha = 0.5) +
  labs(x = "Year and month", y = "Density") +
  coord_cartesian(ylim = c(0, 0.3)) +
  scale_fill_manual(name = "Top communities", labels = c("Community № 106", 
                                                           "Community № 180",
                                                           "Community № 232",
                                                           "Community № 246",
                                                           "Community № 271", 
                                                           "Community № 479",
                                                           "Community № 771",
                                                           "Community № 1029"), values = my_colors) +
  theme_bw() + 
  theme(plot.title = element_text(hjust = 0.5)) +
  scale_x_date(date_breaks = "month", date_labels = "%m-%Y",
               limits = c(ymd("22-09-26"), ymd("23-03-12")))

# Account histogram (general)

Nordstream_tweet_df_small <- select(Nordstream_tweet_df, "author_id", "user_created_at")
Nordstream_tweet_df_small <- Nordstream_tweet_df_small[!duplicated(Nordstream_tweet_df_small), ]

Nordstream_tweet_df_small <- Nordstream_tweet_df_small %>%
  mutate(user_creation_date = as.Date(user_created_at, "%y.%m.%d"))

# Calculate descriptive statistics
summary(Nordstream_tweet_df_small$user_creation_date) # 3rd Qu. at 2021-09-28
names(sort(-table(Nordstream_tweet_df_small$user_creation_date)))[1] # Mode = 2022-04-26
Nordstream_tweet_df_small %>% count(user_creation_date, sort = TRUE) %>% head(5) # Klimaschutzstiftung MV?

ggplot(Nordstream_tweet_df_small, aes(user_creation_date)) + geom_area(stat = "bin", bins = 5999,
                                                                 color = "black", fill = "steelblue2") + 
  labs(x = "Year", y = "Number of accounts") +
  coord_cartesian(ylim = c(0, 800)) +
  theme_bw() + 
  theme(plot.title = element_text(hjust = 0.5)) +
  scale_x_date(date_breaks = "year", date_labels = "%Y",
               limits = c(ymd("06-08-30"), ymd("23-04-12"))) +
  geom_vline(xintercept = as.numeric(as.Date(c("2021-09-28"))), color = "red", lwd = 0.3, linetype = 2) +
  geom_text(aes(x = x, y = y, label = label), 
            data = data.frame(x = ymd("2021-09-28"), y = 700, label = "Third quartile (Q3)"),
            angle = 90, size = 3, vjust = -1, inherit.aes = FALSE) +
  geom_point(aes(x = x, y = y), color = "red", size = 1,
             data = data.frame(x = ymd("2022-04-26"), y = 780)) +
  geom_point(aes(x = x, y = y), color = "red", size = 1,
             data = data.frame(x = ymd("2022-10-28"), y = 759))

Nordstream_class_data <- Nordstream_class_data %>%
  mutate(user_creation_date = as.Date(user_created_at, "%y.%m.%d"))

# Determine top posting accounts (and associated communities) that were created 2022-04-25
tweets_2022_04_25 <- filter(Nordstream_class_data, user_creation_date == "2022-04-25")
tweets_2022_04_25 %>% count(community_id, sort = TRUE) %>% head(5)

# Determine top posting accounts (and associated communities) that were created 2022-10-28
tweets_2022_10_28 <- filter(Nordstream_class_data, user_creation_date == "2022-10-28")
tweets_2022_10_28 %>% count(community_id, sort = TRUE) %>% head(5)
