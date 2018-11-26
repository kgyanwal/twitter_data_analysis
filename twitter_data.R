api_key <- "NwnWdEsLp0ok4M5uiq8iP80C4"
api_secret <- "vxVNbYZrP7jhQqSNExyfQOAMiLzmZVh5Mm4faLcTUCHYzP0oD5"
access_token <- "168596522-nnPdCkx0Hir9K0UXKBP6d5lrN2zMW1KKXDDgvfS5"
access_token_secret <- "Ko9RanR3K1u218RmDDh7ysNcq5u3jEQtLRqjP0Pa0KGpO"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)
1

create_token(
  app = "popular_twitter_app",
  consumer_key = "NwnWdEsLp0ok4M5uiq8iP80C4",
  consumer_secret = "vxVNbYZrP7jhQqSNExyfQOAMiLzmZVh5Mm4faLcTUCHYzP0oD5",
  access_token = "168596522-nnPdCkx0Hir9K0UXKBP6d5lrN2zMW1KKXDDgvfS5",
  access_secret = "Ko9RanR3K1u218RmDDh7ysNcq5u3jEQtLRqjP0Pa0KGpO")

setwd("/Users/krishanagyanwali/Desktop/Drmengelcourse/Rfiles")
library("twitteR")
library(rtweet)
library("RCurl")

# now we can download some tweets search for
# collecting tweets using rtweet library
# collecting the tweets from 20 famous people
twenty_famous_users <- c("TheEllenShow", "justinbieber", "taylorswift13", "Oprah", "MichelleObama",
                   "selenagomez", "LeoDiCaprio", "realDonaldTrump", "tomhanks", "katyperry", 
                   "shakira", "rihanna", "britneyspears", "StephenCurry30", "jimmyfallon",
                   "BillGates", "BrunoMars", "ladygaga", "jtimberlake", "andersoncooper")
twenty_famous_people <- lookup_users(twenty_famous_users)
#save the data frame
twenty_famous_people_df <- data.frame(cbind(twenty_famous_people))

save_as_csv(twenty_famous_people_df, "twenty_famous_people.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

#individually load 5000 tweets of these famous twitter users. 
ellen_tweets <- search_tweets("TheEllenShow", n = 5000)
justin_tweets <- search_tweets("justinbieber", n = 5000)
taylor_tweets <- search_tweets("taylorswift13", n = 5000)
Oprah_tweets <- search_tweets("Oprah", n = 5000)
michelle_tweets <- search_tweets("MichelleObama", n = 5000)
selena_tweets <- search_tweets("selenagomez", n = 5000)
leo_tweets <- search_tweets("LeoDiCaprio", n = 5000)
trump_tweets <- search_tweets("realDonaldTrump", n = 5000)
tom_tweets <- search_tweets("tomhanks", n = 5000)
katy_tweets <- search_tweets("katyperry", n = 5000)
shakira_tweets <- search_tweets("shakira", n = 5000)
rihanna_tweets <- search_tweets("rihanna", n = 5000)
britney_tweets <- search_tweets("britneyspears", n = 5000)
curry_tweets <- search_tweets("StephenCurry30", n = 5000)
jimmy_tweets <- search_tweets("jimmyfallon", n = 5000)
bill_tweets <- search_tweets("BillGates", n = 5000)
bruno_tweets <- search_tweets("BrunoMars", n = 5000)
gaga_tweets <- search_tweets("ladygaga", n = 5000)
timberlake_tweets <- search_tweets("jtimberlake", n = 5000)
anderson_tweets <- search_tweets("andersoncooper", n = 5000)

## check the loaded data
tweets_data(twenty_famous_people_df)

#check the data if they are loaded or not
View(ellen_tweets)
view(Oprah_tweets)
############
####Save collected data to dataframe and csv file
#############
# 1. ellen_tweets.csv
ellen_tweets_df <- data.frame(cbind(ellen_tweets))
save_as_csv(ellen_tweets_df, "ellen_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")
# 2. justin_tweets.csv
justin_tweets_df <- data.frame(cbind(justin_tweets))
save_as_csv(justin_tweets_df, "justin_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 3. taylor_tweets.csv
taylor_tweets_df <- data.frame(cbind(taylor_tweets))
save_as_csv(taylor_tweets_df, "taylor_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 4. Oprah_tweets.csv
Oprah_tweets_df <- data.frame(cbind(Oprah_tweets))
save_as_csv(Oprah_tweets_df, "Oprah_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")
# 5. michelle_tweets.csv
michelle_tweets_df <- data.frame(cbind(michelle_tweets))
save_as_csv(michelle_tweets_df, "michelle_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")
# 6. selena_tweets.csv
selena_tweets_df <- data.frame(cbind(selena_tweets))
save_as_csv(selena_tweets_df, "selena_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")
# 7. leo_tweets.csv
leo_tweets_df <- data.frame(cbind(leo_tweets))
save_as_csv(leo_tweets_df, "leo_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 8. trump_tweets
trump_tweets_df <- data.frame(cbind(trump_tweets))
save_as_csv(trump_tweets_df, "trump_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 9. tom_tweets
tom_tweets_df <- data.frame(cbind(tom_tweets))
save_as_csv(tom_tweets_df, "tom_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 10. katy_tweets
katy_tweets_df <- data.frame(cbind(katy_tweets))
save_as_csv(katy_tweets_df, "katy_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 11. shakira_tweets
shakira_tweets_df <- data.frame(cbind(shakira_tweets))
save_as_csv(shakira_tweets_df, "shakira_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 12. rihanna_tweets
rihanna_tweets_df <- data.frame(cbind(rihanna_tweets))
save_as_csv(rihanna_tweets_df, "rihanna_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 13. britney_tweets
britney_tweets_df <- data.frame(cbind(britney_tweets))
save_as_csv(britney_tweets_df, "britney_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 14. curry_tweets
curry_tweets_df <- data.frame(cbind(curry_tweets))
save_as_csv(curry_tweets_df, "curry_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 15. jimmy_tweets
jimmy_tweets_df <- data.frame(cbind(jimmy_tweets))
save_as_csv(jimmy_tweets_df, "jimmy_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 16. bill_tweets
bill_tweets_df <- data.frame(cbind(bill_tweets))
save_as_csv(bill_tweets_df, "bill_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 17. bruno_tweets
bruno_tweets_df <- data.frame(cbind(bruno_tweets))
save_as_csv(bruno_tweets_df, "bruno_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 18. gaga_tweets
gaga_tweets_df <- data.frame(cbind(gaga_tweets))
save_as_csv(gaga_tweets_df, "gaga_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

# 19. timberlake_tweets
timberlake_tweets_df <- data.frame(cbind(timberlake_tweets))
save_as_csv(timberlake_tweets_df, "timberlake_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

#anderson_tweets
anderson_tweets_df <- data.frame(cbind(anderson_tweets))
save_as_csv(anderson_tweets_df, "anderson_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")

#######################
##After collecting the data and saving them to csv, now, its the time to start
## analyzing them
######################
ellen_tweets <- read.csv("ellen_tweets.csv", header = TRUE)

# structure of the tweet
str(ellen_tweets)
# Collect text only
ellen_tweets_text <- ellen_tweets$text
str(ellen_tweets_text)
# Mining metadata and row count
nrow(ellen_tweets)

# Cleaning tweets
ellen_tweet_clean <- ellen_tweets$text

# Function for cleaning tweets
func_clean_tweets <- function(tweets) {
  clean_tweets <- tweets$text
  #remove retweets
  clean_tweets = gsub("(RT|via)((?:\\b\\W*@\\w+)+)", "", clean_tweets)
  #remove @ people from tweets
  clean_tweets <- gsub("@\\w+", '', clean_tweets)
  # remove punctuations from tweets
  clean_tweets <- gsub('[[:punct:]]', '', clean_tweets)
  
  # remove digits from tweets
  clean_tweets <- gsub('[[:digit:]]', '', clean_tweets)
  # remove html links from tweets
  clean_tweets <- gsub('http\\S+\\s*', '', clean_tweets)

# remove special character
  clean_tweets <- gsub("\\d", '', clean_tweets)
  # remove unnecessary spaces/tabs from tweets
  clean_tweets <- gsub('[ \t]{2,}', '', clean_tweets)
  clean_tweets = gsub('^\\s+|\\s+$', '', clean_tweets)
  # remove emoticans/emogies or special characters
  clean_tweets <- gsub('<.*>', '', enc2native(clean_tweets))
  
  clean_tweets <- tolower(clean_tweets)
  
  return(clean_tweets)
}

#################################################################################
#############################
## 1. Ellen Tweets Analysis #
#############################
ellen_tweets <- read.csv("ellen_tweets.csv", header = TRUE)
#get the clean tweets
ellen_tweets_clean <- func_clean_tweets(ellen_tweets)

#intall syuzhet package for NRC dictionary
# it is used for sentiment analysis
library(syuzhet)

#get emotions using NRC dictionary
ellen_tweets_emotion <- get_nrc_sentiment(as.character(ellen_tweets_clean))
emotion_bar = colSums(ellen_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                        emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
library(plotly)
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Ellen")
# Creating wordcorpus and cleaning
library(tm)
clean_tweets_final <- Corpus(VectorSource(ellen_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(8, "Dark2")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
ellen_sentiment_analysis <- get_nrc_sentiment(as.character(ellen_tweets_clean))
sentiment_scores <- data.frame(colSums(ellen_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Ellen")


#############################
## 2. justin Tweets Analysis#
#############################
justin_tweets <- read.csv("justin_tweets.csv", header = TRUE)
#get the clean tweets
justin_tweets_clean <- func_clean_tweets(justin_tweets)

#get emotions using NRC dictionary
justin_tweets_emotion <- get_nrc_sentiment(as.character(justin_tweets_clean))
emotion_bar = colSums(justin_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Justin Bieber")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(justin_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
justin_sentiment_analysis <- get_nrc_sentiment(as.character(justin_tweets_clean))
sentiment_scores <- data.frame(colSums(justin_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Justin Bieber")


#############################
## 3. Taylor Tweets Analysis    #
#############################
taylor_tweets <- read.csv("taylor_tweets.csv", header = TRUE)
#get the clean tweets
taylor_tweets_clean <- func_clean_tweets(taylor_tweets)

#get emotions using NRC dictionary
taylor_tweets_emotion <- get_nrc_sentiment(as.character(taylor_tweets_clean))
emotion_bar = colSums(taylor_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Taylor Swift")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(taylor_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud

pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
taylor_sentiment_analysis <- get_nrc_sentiment(as.character(taylor_tweets_clean))
sentiment_scores <- data.frame(colSums(taylor_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Taylor Swift")

#############################
## 4. Oprah Tweets Analysis #
#############################
Oprah_tweets <- read.csv("Oprah_tweets.csv", header = TRUE)
#get the clean tweets
Oprah_tweets_clean <- func_clean_tweets(Oprah_tweets)

#get emotions using NRC dictionary
Oprah_tweets_emotion <- get_nrc_sentiment(as.character(Oprah_tweets_clean))
emotion_bar = colSums(Oprah_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets Oprah")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(Oprah_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
Oprah_sentiment_analysis <- get_nrc_sentiment(as.character(Oprah_tweets_clean))
sentiment_scores <- data.frame(colSums(Oprah_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Oprah")


#############################
## 5. Michelle Tweets Analysis #
#############################
michelle_tweets <- read.csv("michelle_tweets.csv", header = TRUE)
#get the clean tweets
michelle_tweets_clean <- func_clean_tweets(michelle_tweets)

#get emotions using NRC dictionary
michelle_tweets_emotion <- get_nrc_sentiment(as.character(michelle_tweets_clean))
emotion_bar = colSums(michelle_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Michelle Obama")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(michelle_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud

pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
michelle_sentiment_analysis <- get_nrc_sentiment(as.character(michelle_tweets_clean))
sentiment_scores <- data.frame(colSums(michelle_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Michelle Obama")


#############################
## 6. Selena Tweets Analysis    #
#############################
selena_tweets <- read.csv("selena_tweets.csv", header = TRUE)
#get the clean tweets
selena_tweets_clean <- func_clean_tweets(selena_tweets)

#get emotions using NRC dictionary
selena_tweets_emotion <- get_nrc_sentiment(as.character(selena_tweets_clean))
emotion_bar = colSums(selena_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Selena Gomez")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(selena_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud

pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
selena_sentiment_analysis <- get_nrc_sentiment(as.character(selena_tweets_clean))
sentiment_scores <- data.frame(colSums(selena_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Selena Gomez")


#############################
## 7. Leo Tweets Analysis #
#############################
leo_tweets <- read.csv("leo_tweets.csv", header = TRUE)
#get the clean tweets
leo_tweets_clean <- func_clean_tweets(leo_tweets)

#get emotions using NRC dictionary
leo_tweets_emotion <- get_nrc_sentiment(as.character(leo_tweets_clean))
emotion_bar = colSums(leo_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Leo Dicaprio")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(leo_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
leo_sentiment_analysis <- get_nrc_sentiment(as.character(leo_tweets_clean))
sentiment_scores <- data.frame(colSums(leo_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Leo Dicaprio")


#############################
## 8. Trump Tweets Analysis #
#############################
trump_tweets <- read.csv("trump_tweets.csv", header = TRUE)
#get the clean tweets
trump_tweets_clean <- func_clean_tweets(trump_tweets)

#get emotions using NRC dictionary
trump_tweets_emotion <- get_nrc_sentiment(as.character(trump_tweets_clean))
emotion_bar = colSums(trump_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Donald Trump")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(trump_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
trump_sentiment_analysis <- get_nrc_sentiment(as.character(trump_tweets_clean))
sentiment_scores <- data.frame(colSums(trump_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Donald Trump")

#############################
## 9. Tom Tweets Analysis    #
#############################
tom_tweets <- read.csv("tom_tweets.csv", header = TRUE)
#get the clean tweets
tom_tweets_clean <- func_clean_tweets(tom_tweets)

#get emotions using NRC dictionary
tom_tweets_emotion <- get_nrc_sentiment(as.character(tom_tweets_clean))
emotion_bar = colSums(tom_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Tom Hanks")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(tom_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
tom_sentiment_analysis <- get_nrc_sentiment(as.character(tom_tweets_clean))
sentiment_scores <- data.frame(colSums(tom_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Tom Hanks")

#############################
## 10. Katy Tweets Analysis #
#############################
katy_tweets <- read.csv("katy_tweets.csv", header = TRUE)
#get the clean tweets
katy_tweets_clean <- func_clean_tweets(katy_tweets)

#get emotions using NRC dictionary
katy_tweets_emotion <- get_nrc_sentiment(as.character(katy_tweets_clean))
emotion_bar = colSums(katy_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Katy Perry")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(katy_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
katy_sentiment_analysis <- get_nrc_sentiment(as.character(katy_tweets_clean))
sentiment_scores <- data.frame(colSums(katy_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Katy")

#############################
## 11. Sakira Tweets Analysis #
#############################
sakira_tweets <- read.csv("shakira_tweets.csv", header = TRUE)
#get the clean tweets
sakira_tweets_clean <- func_clean_tweets(sakira_tweets)

#get emotions using NRC dictionary
sakira_tweets_emotion <- get_nrc_sentiment(as.character(sakira_tweets_clean))
emotion_bar = colSums(sakira_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Sakira Tweets")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(sakira_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
sakira_sentiment_analysis <- get_nrc_sentiment(as.character(sakira_tweets_clean))
sentiment_scores <- data.frame(colSums(sakira_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Sakira")

#############################
## 12. Rihanna Tweets Analysis    #
#############################
rihanna_tweets <- read.csv("rihanna_tweets.csv", header = TRUE)
#get the clean tweets
rihanna_tweets_clean <- func_clean_tweets(rihanna_tweets)


#get emotions using NRC dictionary
rihanna_tweets_emotion <- get_nrc_sentiment(as.character(rihanna_tweets_clean))
emotion_bar = colSums(rihanna_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Rihanna")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(rihanna_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
rihanna_sentiment_analysis <- get_nrc_sentiment(as.character(rihanna_tweets_clean))
sentiment_scores <- data.frame(colSums(rihanna_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Rihanna")

#############################
## 13. Britney Tweets Analysis #
#############################
britney_tweets <- read.csv("britney_tweets.csv", header = TRUE)
#get the clean tweets
britney_tweets_clean <- func_clean_tweets(britney_tweets)

#get emotions using NRC dictionary
britney_tweets_emotion <- get_nrc_sentiment(as.character(britney_tweets_clean))
emotion_bar = colSums(britney_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
library(plotly)
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Britney Spears")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(britney_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
britney_sentiment_analysis <- get_nrc_sentiment(as.character(britney_tweets_clean))
sentiment_scores <- data.frame(colSums(britney_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Britney")

#############################
## 14. Curry Tweets Analysis #
#############################
curry_tweets <- read.csv("curry_tweets.csv", header = TRUE)
#get the clean tweets
curry_tweets_clean <- func_clean_tweets(curry_tweets)

#get emotions using NRC dictionary
curry_tweets_emotion <- get_nrc_sentiment(as.character(curry_tweets_clean))
emotion_bar = colSums(curry_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Stephen Curry")

# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(curry_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
curry_sentiment_analysis <- get_nrc_sentiment(as.character(curry_tweets_clean))
sentiment_scores <- data.frame(colSums(curry_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Curry")

#############################
## 15. Jimmy Tweets Analysis    #
#############################
jimmy_tweets <- read.csv("jimmy_tweets.csv", header = TRUE)
#get the clean tweets
jimmy_tweets_clean <- func_clean_tweets(jimmy_tweets)


#get emotions using NRC dictionary
jimmy_tweets_emotion <- get_nrc_sentiment(as.character(jimmy_tweets_clean))
emotion_bar = colSums(jimmy_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Jimmy Fallon")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(jimmy_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
jimmy_sentiment_analysis <- get_nrc_sentiment(as.character(jimmy_tweets_clean))
sentiment_scores <- data.frame(colSums(jimmy_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Jimmy Fallon")


#############################
## 16. Bill Tweets Analysis #
#############################
bill_tweets <- read.csv("bill_tweets.csv", header = TRUE)
#get the clean tweets
bill_tweets_clean <- func_clean_tweets(bill_tweets)

#get emotions using NRC dictionary
bill_tweets_emotion <- get_nrc_sentiment(as.character(bill_tweets_clean))
emotion_bar = colSums(bill_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories of Bill Gates Tweets")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(bill_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
bill_sentiment_analysis <- get_nrc_sentiment(as.character(bill_tweets_clean))
sentiment_scores <- data.frame(colSums(bill_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Bill Gates")

#############################
## 17. Bruno Tweets Analysis #
#############################
bruno_tweets <- read.csv("bruno_tweets.csv", header = TRUE)
#get the clean tweets
bruno_tweets_clean <- func_clean_tweets(bruno_tweets)

#get emotions using NRC dictionary
bruno_tweets_emotion <- get_nrc_sentiment(as.character(bruno_tweets_clean))
emotion_bar = colSums(bruno_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories of Bruno Mars Tweets")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(bruno_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
bruno_sentiment_analysis <- get_nrc_sentiment(as.character(bruno_tweets_clean))
sentiment_scores <- data.frame(colSums(bruno_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Bruno Mars")

#############################
## 18. Gaga Tweets Analysis    #
#############################
gaga_tweets <- read.csv("gaga_tweets.csv", header = TRUE)
#get the clean tweets
gaga_tweets_clean <- func_clean_tweets(gaga_tweets)

#get emotions using NRC dictionary
gaga_tweets_emotion <- get_nrc_sentiment(as.character(gaga_tweets_clean))
emotion_bar = colSums(gaga_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories of Lady Gaga Tweets")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(gaga_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(12, "Paired")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
gaga_sentiment_analysis <- get_nrc_sentiment(as.character(gaga_tweets_clean))
sentiment_scores <- data.frame(colSums(gaga_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Gaga")

#############################
## 19. Timberlake Tweets Analysis #
#############################
timberlake_tweets <- read.csv("timberlake_tweets.csv", header = TRUE)
#get the clean tweets
timberlake_tweets_clean <- func_clean_tweets(timberlake_tweets)

#get emotions using NRC dictionary
timberlake_tweets_emotion <- get_nrc_sentiment(as.character(timberlake_tweets_clean))
emotion_bar = colSums(timberlake_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories of Timberlake Tweets")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(timberlake_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
pal <- brewer.pal(8, "Dark2")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
timberlake_sentiment_analysis <- get_nrc_sentiment(as.character(timberlake_tweets_clean))
sentiment_scores <- data.frame(colSums(timberlake_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Timberlake")

#############################
## 20. Anderson Tweets Analysis #
#############################
anderson_tweets <- read.csv("anderson_tweets.csv", header = TRUE)
#get the clean tweets
anderson_tweets_clean <- func_clean_tweets(anderson_tweets)

#get emotions using NRC dictionary
anderson_tweets_emotion <- get_nrc_sentiment(as.character(anderson_tweets_clean))
emotion_bar = colSums(anderson_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
library(plotly)
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets")
# Creating wordcorpus and cleaning
clean_tweets_final <- Corpus(VectorSource(anderson_tweets_clean))
clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud

pal <- brewer.pal(8, "Dark2")
wordcloud(clean_tweets_final, min.freq = 5, max.words = Inf, width=1000, height=
            1000, random.order = TRUE, color = pal)

#Sentiment Analysis
anderson_sentiment_analysis <- get_nrc_sentiment(as.character(anderson_tweets_clean))
sentiment_scores <- data.frame(colSums(anderson_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Anderson")
##################################



# predicting a model based on the retweets using Linear Regression
lm_model = lm(retweet_count ~ followers_count, twenty_famous_people_df)

twenty_famous_people_df$followers_count

summary(lm_model)

coef(summary(lm_model))
predict(lm_model)








