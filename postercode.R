#IST 719
#Visualization Project Poster 
#Bradley Wuon Seok Choi

#The data is from Kaggle. 

###########################################################################################
#packages
install.packages("dplyr")
install.packages("gplots")
install.packages("treemap")
install.packages("sqldf")
#library
library(tm)
library(wordcloud)
library(sqldf)
library(dplyr)
library(gplots)
library(treemap)
library(sqldf)
###########################################################################################
#importing the dataset
kickstarter <- read.csv(file.choose())
####
#Cleaning the house. 
#Column names of the dataset
colnames(kickstarter)
#Deleting column usd.pledged and pledged
kickstarter <- kickstarter[-13]
kickstarter <- kickstarter[-9]
#seeing colnames again 
colnames(kickstarter)
#rmoving the last redundant column goal
kickstarter <- kickstarter[-7]
#seeing the colnames again
colnames(kickstarter)
#removing column name category
kickstarter <- kickstarter[-3]
#seeing the colnmaes again
colnames(kickstarter)
#Deleting exact row that states the launch year is 1970
#I am deleting this exact row as Kickstarter did not exist in the year 1970
kickstarter <- kickstarter[-c(2843), ]


###########################################################################################
#Looking at the dataset from a distance. 
#Structure of the data
str(kickstarter) 
#providng basic descriptive statistics and frequencies
summary(kickstarter)
#looking at the column names
colnames(kickstarter)
#Looking at the first 12 rows
kickstarter[1:12, ]

####
#Turning off Scientific Notation
options(scipen = 999)

#### 
#Moving on to plotting the graphs
#Graph about the six category of the project status
plot(kickstarter$state, xlab = "Status of Project", ylab = "Projects", main = "Crowdfunded Project Status 2009-2017")
####
#Additional cleaning of the data
#after seeing a few of status that that were minimal in the data set that might skew the data
#hence decided to delete the rows that contained such status

kickstarter <- kickstarter[!kickstarter$state == "live", ]
kickstarter <- kickstarter[!kickstarter$state == "suspended", ]
kickstarter <- kickstarter[!kickstarter$state == "undefined", ]


###########################################################################################
#######
#Pie plots

###overall status
status <- sqldf::sqldf("
                       SELECT ID, state
                       FROM kickstarter
                       ")
status <- data.frame(count(status, state))
#plotting
pie(status$n, labels = status$state, main = "Success Rate")
pie(sp$`Number of Successful Projects`, labels = sp$`Main Category`, main = "Successful Projects by Main Category")
#Pie chart by project country
#creating a new dataframe
countries <- data.frame(count(kickstarter, country))
str(countries)
#changing column names
colnames(countries)
colnames(countries) <- c("Country", "Crowdfunders")
#deleting row N'O 
countries <- countries[-c(17), ]
#treemap
treemap(countries, 
        index = "Country", 
        vSize = "Crowdfunders", 
        type = "index")

require(sqldf)
require(dplyr)
#creating a df where project status was successful 
s.projects <- sqldf("
                    SELECT main_category, state
                    FROM kickstarter")
#deleting the rows with the state of failed & canceled
s.projects <- s.projects[!s.projects$state == "failed", ]
s.projects <- s.projects[!s.projects$state == "canceled", ]
#
sp <- count(s.projects, main_category) 
colnames(sp) <- c("Main Category", "Number of Successful Projects")
#plotting pie charts
pie(sp$`Number of Successful Projects`, labels = sp$`Main Category`, main = "Successful Projects by Main Category")

require(sqldf)
require(dplyr)
#creating a df where project status was failed
f.projects <- sqldf("
                    SELECT main_category, state
                    FROM kickstarter")
f.projects <- f.projects[!f.projects$state == "successful", ]
f.projects <- f.projects[!f.projects$state == "canceled", ]
fp <- count(f.projects, main_category)
colnames(fp) <- c("Main Category", "Number of Failed Projects")
#plotting pie charts
pie(fp$`Number of Failed Projects`, labels = fp$`Main Category`, main = "Failed Projects by Main Category")
#require packages
require(sqldf)
require(dplyr)
#creating a df of the United Kingdom based on Success & Failure of projects
#failed projects in the UK
ukpf <- sqldf::sqldf("
                     SELECT ID, main_category, state,country
                     FROM kickstarter
                     WHERE country = 'GB'
                     ")
ukpf <- ukpf[!ukpf$state == "canceled", ]
ukpf <- ukpf[!ukpf$state == "successful", ]
colnames(ukpf)
ukpf <- data.frame(count(ukpf, main_category))
colnames(ukpf) <- c("category", "total")
pie(ukpf$total, labels = ukpf$category, main = "Failed Projects by Category in the U.K.")
#Successful projects in the UK
ukps <- sqldf::sqldf("
                     SELECT ID, main_category, state,country
                     FROM kickstarter
                     WHERE country = 'GB'
                     ")
ukps <- ukps[!ukps$state == "canceled", ]
ukps <- ukps[!ukps$state == "fail", ]
colnames(ukps)
ukps <- data.frame(count(ukps, main_category))
colnames(ukps) <- c("category", "total")
pie(ukps$total, labels = ukps$category, main = "Successful Projects by Category in the U.K.")
#creating a df of the Canada based on Success & Failure of projects
#Failed projects in Canada
capf <- sqldf::sqldf("
                     SELECT ID, main_category, state,country
                     FROM kickstarter
                     WHERE country = 'CA'
                     ")
capf <- capf[!capf$state == "canceled", ]
capf <- capf[!capf$state == "successful", ]
colnames(capf)
capf <- data.frame(count(capf, main_category))
colnames(capf) <- c("category", "total")
pie(capf$total, labels = capf$category, main = "Failed Projects by Category in Canada")
#Successful projects in Canada
caPs <- sqldf::sqldf("
                     SELECT ID, main_category, state,country
                     FROM kickstarter
                     WHERE country = 'CA'
                     ")
caPs <- caPs[!caPs$state == "canceled", ]
caPs <- caPs[!caPs$state == "fail", ]
colnames(caPs)
caPs <- data.frame(count(caPs, main_category))
colnames(caPs) <- c("category", "total")
pie(caPs$total, labels = caPs$category, main = "Successful Projects by Category in Canada")

###########################################################################################
#######
#Barplot
#using SQLDF to make 5 different data.frames to create stacked barplot
library(sqldf)
require(dplyr)
#Australia
AU <- sqldf(
  "SELECT name, main_category, state, country
  FROM kickstarter
  WHERE country = 'AU'
  "
)
#deleting rows with the category canceled
AU <- AU[!AU$state == "canceled", ]
#re-organizing the df as how much successful and not
AU <- data.frame(count(AU, state == "successful"))
#Canada
CA <- sqldf(
  "SELECT name, main_category, state, country
  FROM kickstarter
  WHERE country = 'CA'
  "
)
#deleting rows with the category canceled
CA <- CA[!CA$state == "canceled", ]
#re-organizing the df as how much successful and not
CA <- data.frame(count(CA, state == "successful"))
#France
FR <- sqldf(
  "SELECT name, main_category, state, country
  FROM kickstarter
  WHERE country = 'FR'
  "
)
#deleting rows with the category canceled
FR <- FR[!FR$state == "canceled", ]
#re-organizing the df as how much successful and not
FR <- data.frame(count(FR, state == "successful"))
#Germany
DE <- sqldf(
  "SELECT name, main_category, state, country
  FROM kickstarter
  WHERE country = 'DE'
  "
)
#deleting rows with the category canceled
DE <- DE[!DE$state == "canceled", ]
#re-organizing the df as how much successful and not
DE <- data.frame(count(DE, state == "successful"))
#United Kingdom or Great Britain
GB <- sqldf(
  "SELECT name, main_category, state, country
  FROM kickstarter
  WHERE country = 'GB'
  "
)
#deleting rows with the category canceled
GB <- GB[!GB$state == "canceled", ]
#re-organizing the df as how much successful and not
GB <- data.frame(count(GB, state == "successful"))

#Organizing into df with the first row being successful
#second row being failure or fail
topfive <- data.frame(GB$n, CA$n, AU$n, DE$n, FR$n)
#Changing the name of the columns as respectful Countries
colnames(topfive) <- c("United Kingdom", "Canada", "Australia", "Germany", "France")

#Barplot 
barplot(as.matrix(topfive), xlab = "Country", ylab = "Projects", main = "Project Success v.s. Failure by Country")

###########################################################################################
#######
#LineGraph
require(dplyr)
#importing five country .csv made out of kickstart data
AU <- read.csv(file.choose())
CA <- read.csv(file.choose())
DE <- read.csv(file.choose())
FR <- read.csv(file.choose())
GB <- read.csv(file.choose())
#removing 2018 as it distorts the data
#2018 data is incomplete
AU <- AU[-c(6), ]
CA <- CA[-c(6), ]
DE <- DE[-c(6), ]
FR <- FR[-c(4), ]
GB <- GB[-c(7), ]
#plot
plot(GB$Year.of.Launched, GB$Backers, type = "l", lwd = 2, bty = "n", xlab = "Year Launched", ylab = "Backers", main = "2009 - 2017: Top 5 Countries with the Most Backers")
lines(AU$Year.of.Launched, AU$Backers, type = "l", lwd = 2,  col = "blue")
lines(CA$Year.of.Launched, CA$Backers, type = "l", lwd = 2,  col = "red")
lines(DE$Year.of.Launched, DE$Backers, type = "l", lwd = 2,  col = "gold")
lines(FR$Year.of.Launched, FR$Backers, type = "l", lwd = 2,  col = "green")
legend("topleft", 
       c("Australia", "Canada", "France", "Germany", "United Kingdom"),
       col = c("blue", "red", "green", "gold", "black"),
       lwd = 3, lty = 1)

#Importing created df using kickstarter.csv data
succesfull <- read.csv(file.choose())
colnames(succesfull) <- c("status", "Year", "TotalProjects")
failed <- read.csv(file.choose())
colnames(failed) <- c("Status", "Year", "TotalProjects")
canceled <- read.csv(file.choose())
colnames(canceled) <- c("Status", "Year", "TotalProjects")
#deleting row of 1970 as kickstater did not exist
#and 2018 as it has incomplete data
canceled <- canceled[-c(1), ]
canceled <- canceled[-c(10), ]
#plotting
#status of projects
plot(failed$Year, failed$TotalProjects, type = "l", lwd = 3, bty = "n",  col = "red", main = "Status of Projects")
lines(succesfull$Year, succesfull$TotalProjects, type = "l", lwd = 3, col = "blue")
lines(canceled$Year, canceled$TotalProjects, type = "l", lwd = 3, col = "yellow")
legend("topleft", 
       c("Caneled Projects ", "Failed Projects", "Successful Projects"),
       col = c("yellow", "red", "blue"),
       lwd = 3, lty = 1)

#Pledged in USD from 2009 - 2017
pledged <- read.csv(file.choose())
#changing column names
colnames(pledged) <- c("Year", "USD")
#plotting the Pledged USD from 2009 - 2017
plot(pledged$Year, pledged$USD, xlab = "Year", ylab = "Pledged USD", type = "l", lwd = 3, bty = "n", col = "darkgreen", main = "Total Pledged (USD) per Year")

###########################################################################################
#######
#TreeMap
require(treemap)
require(sqldf)
#Treemap by project country
#creating a new dataframe
countries <- data.frame(count(kickstarter, country))
str(countries)
 #changing column names
colnames(countries)
colnames(countries) <- c("Country", "Crowdfunders")
#deleting row N'O 
countries <- countries[-c(17), ]
#treemap
treemap(countries, 
        index = "Country", 
        vSize = "Crowdfunders", 
        type = "index")
#Successful Projects by Main Category
suces.proj<- sqldf("
                   SELECT main_category, state, country 
                   FROM kickstarter
                   WHERE state = 'successful'")
#Deleting the rows where country equals US
suces.proj <- suces.proj[!suces.proj$country == "US", ]
suces.proj <- suces.proj[!suces.proj$country == 'N,0"', ]
colnames(suces.proj) <- c("category", "state", "country")
#getting rid of the column country
suces.proj <- suces.proj[-3]
#getting rid of the column state
suces.proj <- suces.proj[-2]
colnames(suces.proj)

s.Category <- count(suces.proj, category)
colnames(s.Category) <- c("Category", "Number")
colnames(s.Category)
treemap(s.Category, 
        index = "Category", 
        vSize = "Number", 
        type = "index")

#Failed Projects by Main Category
fCprojects<- sqldf("
                   SELECT main_category, state, country
                   FROM kickstarter
                   WHERE state = 'failed'")
#Deleting the rows where country equals US
fCprojects <- fCprojects[!fCprojects$country == "US", ]
fCprojects <- fCprojects[!fCprojects$country == 'N,0"', ]
#getting rid of the column country
fCprojects <- fCprojects[-3]
#getting rid of the column state
fCprojects <- fCprojects[-2]
#creating a df with the total count of main categories of failed projects
f.Category <- count(fCprojects, main_category)
#changing column names
colnames(f.Category) <- c("Category", "Number")
colnames(f.Category)
#plotting 
treemap(f.Category, 
        index = "Category", 
        vSize = "Number", 
        type = "index")

###########################################################################################
#######
#########
#wordcloud
library(tm)
library(wordcloud)
library(sqldf)
#########
#Total Project wordcloud
kickstarter.csv <- file.choose()
kickstarter <- read.csv(kickstarter.csv)
#creating a dataframe using sqldf
require(sqldf)
projectname <- sqldf("
                     SELECT name 
                     FROM kickstarter 
                     ")
#creating a .txt file to be exported and re-imported
write.table(projectname, file = "ProjectName.txt", sep = "\t", row.names = FALSE)
#Total Kickstarter PRojects titles wordcloud
#importing .txt file path
projectname.txt <- file.choose()
pNamefile <- scan(projectname.txt, character(0), sep = "\n")
#seeing the first part of an object
head(pNamefile)
#this code is just doing it for a subset of 5,000 samples
pNamefile = pNamefile[1:5000]

# convert text to lower case
Ttitle = strsplit(tolower(paste(pNamefile, collapse = ' ')), ' ')
# create a corpus
tdocs <- Corpus(VectorSource(Ttitle))
#remove numbers
tdocs <- tm_map(tdocs, removeNumbers)
#remove the word project
tdocs <- tm_map(tdocs, removeWords, "project")
#remove the word new
tdocs <- tm_map(tdocs, removeWords, "new")
#remove the word help
tdocs <- tm_map(tdocs, removeWords, "help")
#remove the word album
tdocs <- tm_map(tdocs, removeWords, "album")
#remove the word film
tdocs <- tm_map(tdocs, removeWords, "film")
#remove the word game
tdocs <- tm_map(tdocs, removeWords, "game")
#remove the word art
tdocs <- tm_map(tdocs, removeWords, "art")
#remove the word art
tdocs <- tm_map(tdocs, removeWords, "music")
#remove words
tdocs <- tm_map(tdocs, removeWords, stopwords("english"))
#remove punctuation
tdocs <- tm_map(tdocs, removePunctuation)
#remove trailing spaces
tdocs <- tm_map(tdocs, stripWhitespace)
#create document term matrix with frequencies
tdtm <- TermDocumentMatrix(tdocs)

#maximum allowed sparsity as 50%
tdtm <- removeSparseTerms(tdtm, 0.5)
#make DTM object a matrix
tm <- as.matrix(tdtm)
#sort word frequencies in decreasing order, with most frequent words first
tV <- sort(rowSums(tm),decreasing=TRUE)
#to get the same random numbers every time for the positioning of words
set.seed(4363)
#plotting
wordcloud(names(tV), tV, min.freq = 50, max.words = 20)
wordcloud(names(tV), tV, max.freq = 500, max.words = 30, random.order = FALSE, colors=brewer.pal(8,"Dark2"), font = 7)
#WordPlot1
wordcloud(names(tV), tV, max.freq = 1000, max.words = 30, random.order = FALSE, colors=brewer.pal(8,"Dark2"), font = 7)


#########
#Project wordcloud by the category of successful
require(sqldf)
#Creating a successword df
successword <- sqldf("
                     SELECT name, state 
                     FROM kickstarter 
                     ")
#deleting the rows with the state of failed & canceled
successword <- successword[!successword$state == "failed", ]
successword <- successword[!successword$state == "canceled", ]
#deleting the column = success
successword <- successword[-2]
#creating a .txt file
write.table(successword, file = "successword.txt", sep = "\t", row.names = FALSE)
#improting the file 
succ.txt <- file.choose()
succfile <- scan(succ.txt, character(0), sep = "\n")
head(succfile)
# remove this line to generate for the entire dataset
succfile = succfile[1:5000]

#convert text to lower case
text = strsplit(tolower(paste(succfile, collapse = ' ')), ' ')
#create a corpus
docs <- Corpus(VectorSource(text))
#remove numbers
docs <- tm_map(docs, removeNumbers)
#remove words
docs <- tm_map(docs, removeWords, stopwords("english"))
#remove punctuation
docs <- tm_map(docs, removePunctuation)
#remove the word project
docs <- tm_map(docs, removeWords, "project")
#remove the word new
docs <- tm_map(docs, removeWords, "new")
#remove the word help
docs <- tm_map(docs, removeWords, "help")
#remove the word album
docs <- tm_map(docs, removeWords, "album")
#remove the word film
docs <- tm_map(docs, removeWords, "film")
#remove the word game
docs <- tm_map(docs, removeWords, "game")
#remove the word art
docs <- tm_map(docs, removeWords, "art")
#remove the word art
docs <- tm_map(docs, removeWords, "music")
#remove trailing spaces
docs <- tm_map(docs, stripWhitespace)
#create document term matrix with frequencies
dtm <- TermDocumentMatrix(docs)
#maximum allowed sparsity as 50%
dtm <- removeSparseTerms(dtm, 0.5)
#make DTM object a matrix
m <- as.matrix(dtm)
#sort word frequencies in decreasing order, with most frequent words first
v <- sort(rowSums(m),decreasing=TRUE)
#to get the same random numbers every time for the positioning of words
set.seed(4363)
#Plotting
wordcloud(names(v), v, min.freq = 50, max.words = 20)
wordcloud(names(v), v, max.freq = 1000, max.words = 20, random.order = FALSE, colors=brewer.pal(8,"Dark2"), font = 7)
#WordPlot 2
wordcloud(names(v), v, max.freq = 1000, max.words = 30, random.order = FALSE, colors=brewer.pal(8,"Dark2"), font = 7)

#########
#Failed Project Status wordcloud
#Creating a failword df
failword <- sqldf("
                  SELECT name, state
                  FROM kickstarter
                  ")
#deleting the rows with the state of success & canceled
failword <- failword[!failword$state == "success", ]
failword <- failword[!failword$state == "canceled", ]
#deleting the column = fail
failword <- failword[-2]
#creating a .txt file
write.table(failword, file = "failword.txt", sep = "\t", row.names = FALSE)
#importing fail.txt
fail.txt <- file.choose()
failfile <- scan(fail.txt, character(0), sep = "\n")
head(failfile)
# remove this line to generate for the entire dataset
fFile = failfile[1:5000]
word = strsplit(tolower(paste(fFie, collapse = ' ')), ' ')
fdocs <- Corpus(VectorSource(text))
fdocs <- tm_map(fdocs, removeNumbers)
fdocs <- tm_map(fdocs, removeWords, stopwords("english"))
#remove punctuation
fdocs <- tm_map(fdocs, removePunctuation)
#remove the word project
fdocs <- tm_map(fdocs, removeWords, "project")
#remove the word new
fdocs <- tm_map(fdocs, removeWords, "new")
#remove the word help
fdocs <- tm_map(fdocs, removeWords, "help")
#remove the word album
fdocs <- tm_map(fdocs, removeWords, "album")
#remove the word film
fdocs <- tm_map(fdocs, removeWords, "film")
#remove the word game
fdocs <- tm_map(fdocs, removeWords, "game")
#remove the word art
fdocs <- tm_map(fdocs, removeWords, "art")
#remove the word art
fdocs <- tm_map(fdocs, removeWords, "music")
#remove trailing spaces
fdocs <- tm_map(fdocs, stripWhitespace)
#create document term matrix with frequencies
fdtm <- TermDocumentMatrix(fdocs)
#maximum allowed sparsity as 50%
fdtm <- removeSparseTerms(fdtm, 0.5)
#make DTM object a matrix
fm <- as.matrix(fdtm)
#sort word frequencies in decreasing order, with most frequent words first
fv <- sort(rowSums(m),decreasing=TRUE)
#to get the same random numbers every time for the positioning of words
set.seed(4363)
#Plotting
wordcloud(names(fv), fv, min.freq = 50)
#WordPlot 3
wordcloud(names(fv), fv, max.freq = 1000, max.words = 30, random.order = FALSE, colors=brewer.pal(8,"Dark2"), font = 7)



 
