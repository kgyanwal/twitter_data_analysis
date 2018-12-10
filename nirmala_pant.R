##
## Author: Krishana Gyanwali
## Date: 12/09/2018
## A Twitter Feed Analysis on Nirmala Pant's rape and murder case
##
library("twitteR")
library(rtweet)
library("RCurl")


#individually load 5000 tweets of these famous twitter users. 
nirmala_tweets <- search_tweets("Nirmala Pant", n = 5000)

nirmala_tweets <- search_tweets("nirmala pant", n = 5000)

############
####Save collected data to dataframe and csv file
#############
# 1. nirmala_tweets.csv
nirmala_tweets_df <- data.frame(cbind(nirmala_tweets))
save_as_csv(nirmala_tweets_df, "nirmala_tweets.csv", prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")


#######################
##After collecting the data and saving them to csv, now, its the time to start
## analyzing them
######################
nirmala_tweets <- read.csv("nirmala_tweets.csv", header = TRUE)

# structure of the tweet
str(nirmala_tweets)
# Collect text only
nirmala_tweets_text <- nirmala_tweets$text
str(nirmala_tweets_text)
# Mining metadata and row count
nrow(nirmala_tweets)

# Function for cleaning tweets
func_clean_tweets <- function(tweets) {
  clean_tweets <- tweets$text
  #remove retweets
  clean_tweets = gsub("(RT|via)((?:\\b\\W*@\\w+)+)", "", clean_tweets)
  #remove @ people from tweets
  clean_tweets <- gsub("@\\w+", '', clean_tweets)
  # remove punctuations from tweets
 # clean_tweets <- gsub('[[:punct:]]', '', clean_tweets)
  
  # remove digits from tweets
  clean_tweets <- gsub('[[:digit:]]', '', clean_tweets)
  # remove html links from tweets
  clean_tweets <- gsub('http\\S+\\s*', '', clean_tweets)
  
  # remove special character
 # clean_tweets <- gsub("\\d", '', clean_tweets)
  # remove unnecessary spaces/tabs from tweets
  clean_tweets <- gsub('[ \t]{2,}', '', clean_tweets)
 # clean_tweets = gsub('^\\s+|\\s+$', '', clean_tweets)
  # remove emoticans/emogies or special characters
  #clean_tweets <- gsub('<.*>', '', enc2native(clean_tweets))
  
  clean_tweets <- tolower(clean_tweets)
  
  return(clean_tweets)
}

#################################################################################
#############################
## 1. Nirmala Pant Tweets Analysis #
#############################
nirmala_tweets <- read.csv("nirmala_tweets.csv", header = TRUE)
#get the clean tweets
nirmala_tweets_clean <- func_clean_tweets(nirmala_tweets)
nirmala_tweets_clean

#intall syuzhet package for NRC dictionary
# it is used for sentiment analysis
library(syuzhet)

#get emotions using NRC dictionary
# An alternative way of analysing sentiments of the tweets. 
nirmala_tweets_emotion <- get_nrc_sentiment(as.character(nirmala_tweets_clean))
emotion_bar = colSums(nirmala_tweets_emotion)
emotion_sum = data.frame(count=emotion_bar, emotion=names(emotion_bar))
emotion_sum$emotion = factor(emotion_sum$emotion, levels=
                               emotion_sum$emotion[order(emotion_sum$count, decreasing = TRUE)])

#visualize the result
library(plotly)
plot_ly(emotion_sum, x=~emotion, y=~count, type="bar", color=~emotion) %>%
  layout(xaxis = list(title=""), showlegend=FALSE,
         title="Emotion Categories for Tweets of Nirmala Pant")
# Creating wordcorpus and cleaning
library(tm)
clean_tweets_final <- Corpus(VectorSource(nirmala_tweets_clean))
#clean_tweets_final <- tm_map(clean_tweets_final, removePunctuation)
#clean_tweets_final <- tm_map(clean_tweets_final, content_transformer(tolower))
#clean_tweets_final <- tm_map(clean_tweets_final, removeWords, stopwords("english"))
clean_tweets_final <- tm_map(clean_tweets_final, stripWhitespace)

#library wordcloud
library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(8, "Dark2")
wordcloud(clean_tweets_final, min.freq = 1, max.words = Inf, width=1000, height=
            1000, random.order = FALSE, color = pal)

#Sentiment Analysis
nirmala_sentiment_analysis <- get_nrc_sentiment(as.character(nirmala_tweets_clean))
sentiment_scores <- data.frame(colSums(nirmala_sentiment_analysis[,]))
names(sentiment_scores) <- "Score"
sentiment_scores <- cbind("sentiment" = rownames(sentiment_scores), sentiment_scores)
rownames(sentiment_scores) <- NULL
ggplot(data = sentiment_scores, aes(x = sentiment, y = Score)) +
  geom_bar(aes(fill = sentiment), stat = "identity") +
  theme(legend.position = "none") + 
  xlab("Sentiment") + ylab("Score") + ggtitle("Sentiment Score Based on Tweets about Nirmala Pant")

