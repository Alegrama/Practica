attach(Tweets)

install.packages("syuzhet")
install.packages("RColorBrewer")
install.packages("wordcloud")
install.packages("tm")
install.packages("STAT")

library(syuzhet)
library(RColorBrewer)
library(wordcloud)
library(tm)
library(dbplyr)
library(stats)
library(ggplot2)
library(reshape2)
library(NLP)
library(dplyr)

summary(Tweets)
names(Tweets)

#Distribucion de opininiones negativas de la aerolineas
posNeg=Tweets%>% group_by(airline_sentiment) %>% dplyr::summarise(count=n())
posNeg

ggplot(data=posNeg , aes(x="" , y=count , fill=airline_sentiment))+geom_bar(width=1,stat="identity")+
  geom_text(aes(y = count/3 + c(0, cumsum(count)[-length(count)]), 
                label =count), size=4)+coord_polar("y") + scale_fill_manual(values=c("#ffbebe", "#fff9be", "#d4ffbe"))





#Distribucion de opininiones por aerolina

ggplot(Tweets, aes(Tweets$airline, fill=airline_sentiment)) + geom_bar()


#Agrupacion de comentarios negativos por aerolinea

airlines= Tweets %>% group_by(airline) %>% dplyr::summarise(count=n())
posNegporAirline <-dcast(Tweets, airline ~ airline_sentiment)

# Porcentaje de opiniones negativas
posNegporAirline$negPer = posNegporAirline$negative / (posNegporAirline$negative + posNegporAirline$positive + posNegporAirline$neutral)
posNegporAirline = posNegporAirline[order(-posNegporAirline$negPer),] 
posNegporAirline


ggplot(posNegporAirline, aes(negPer, fill=airline))+geom_bar()


# De lo anterior se desprende que hay tres aerolineas con mas de 50% de opiniones negativas

negativeTweets <- Tweets %>% filter(airline_sentiment=="negative")
negativeTweetsByDate <- negativeTweets %>% group_by(as.Date(tweet_created)) %>% dplyr::summarise(count = n())
negativeTweetsByDate 

#Razones para los tweets negativos
RazonesNegativasTweets<-negativeTweets %>% group_by(negativereason) %>% dplyr::summarise(count=n()) %>% arrange(desc(count))
RazonesNegativasTweets

#Razones de los tweets negativos por aerolinea
razonesTweetsNegativosporAerolinea <- negativeTweets %>% group_by(airline,negativereason) %>% dplyr::summarise(count=n())%>% arrange(airline,desc(count))
razonesTweetsNegativosporAerolinea

# top de razones para cada aerolinea. Notese que  "Customer Service Issue" es la principal razon
#para tweets negativos excepto Delta Airlines donde la razon es "la llegada tardia de los vuelos"

docs <- Corpus(VectorSource(Tweets$text))
docs <- tm_map(docs, content_transformer(tolower))
docs <- tm_map(docs, removeNumbers)
docs <- tm_map(docs, removeWords, stopwords("english"))
docs <- tm_map(docs, removeWords, c("usairways" ,"united", "flight" , "americanair" , "jetblue" , "southwestair")) 
docs <- tm_map(docs, removePunctuation)
docs <- tm_map(docs, stripWhitespace)

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)


wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))



