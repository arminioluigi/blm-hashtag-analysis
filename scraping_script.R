#Loading the necessary packages
library(rtweet)
library(httpuv)
library(assertthat)
library(tidyverse)
library(devtools)
library(openssl)
library(bit)


#Setting API key information
appname = "######"
consumer_key <- "######"
consumer_secret <- "######"
access_token <- "######"
access_secret <- "######"

#Define rtweet token
rtweetoken <- create_token(app=appname,consumer_key=consumer_key,consumer_secret=consumer_secret,access_token=access_token,access_secret=access_secret)



blmtweets <- search_tweets("black lives matter",
  n = 1000000,
  lang = "en",
  type = "recent",
  include_rts = FALSE,
  geocode = NULL,
  max_id = NULL,
  parse = TRUE,
  token = rtweetoken,
  retryonratelimit = TRUE,
  verbose = TRUE)

saveRDS(blmtweets, file = "blm.rds")
