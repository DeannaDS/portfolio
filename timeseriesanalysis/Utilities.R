library("tidyverse")
#set the working directory (this changes from computer to computer)
setwd('C:/Users/deanna.schneider/gradschool/ds710/ds710fall2017finalproject-Brisbin/')#work computer

scan_file <- function(filename){
    #scan everything but the header row
    read_file <- scan(filename, 
                 what=list(AuthorID=numeric(),
                           Author.Screen_Name=character(),
                           Followers.Count=integer(),
                           Friends.Count=integer(),
                           Statuses.Count=integer(),
                           Language=character(),
                           Created_At=character(),
                           Favorite_count=integer(),
                           Text=character(),
                           Source=character(),
                           retweet_count=integer(),
                           Hashtags=character(),
                           cleanTweet=character(),
                           sentiment=character(),
                           polarity=numeric(),
                           subjectivity=numeric(),
                           parts_of_speech=character(),
                           total_verbs=integer(),
                           base_verb=integer(),
                           past_tense=integer(),
                           present_participle=integer(),
                           past_participle=integer(),
                           present_not_third=integer(),
                           present_third=integer(),
                           total_past=integer(),
                           total_present=integer()
                 ), 
                 sep=",",
                 skip=1,
                 nlines=8000)
    
    #make it a dataframe
    read_file.df <- as.data.frame(read_file)
    
    #read in the first row
    read_file.header <- scan(filename, 
                        what=character(), 
                        sep=",",
                        nlines=1)
    #set the colnames
    colnames(read_file.df) <- read_file.header

    return(read_file.df)
    }

read.csv_function <- function(filename){
  return(read.csv(filename))
  
}

library("tidyverse")
read_csv_function <- function(filename){
  return(read_csv(filename))
  
}


system.time(scan_file('metoo_cleaned.csv'))
system.time(read.csv_function('metoo_cleaned.csv'))
system.time(read_csv_function('metoo_cleaned.csv'))



#use a helper function to make the overlaying color transparent
makeTransparent = function(..., alpha=0.5) {
  
  if(alpha<0 | alpha>1) stop("alpha must be between 0 and 1")
  
  alpha = floor(255*alpha)  
  newColor = col2rgb(col=unlist(list(...)), alpha=FALSE)
  
  .makeTransparent = function(col, alpha) {
    rgb(red=col[1], green=col[2], blue=col[3], alpha=alpha, maxColorValue=255)
  }
  
  newColor = apply(newColor, 2, .makeTransparent, alpha=alpha)
  
  return(newColor)
  
}

print(makeTransparent("thistle4"))
