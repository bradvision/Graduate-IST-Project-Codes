# IST687 FINAL PROJECT  (Fall 17)

    # STEP 1

##################################################################################
# DATA IMPORT
##################################################################################

          # STEP 1(a)
# To sort the data and only keep the attributes we deemed relevant
library(readr)
data2014February <- read_csv("~/Downloads/out-201402.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014February <- na.omit(data2014February)
data2014March <- read_csv("~/Downloads/out-201403.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014March <- na.omit(data2014March)
data2014April <- read_csv("~/Downloads/out-201404.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014April <- na.omit(data2014April)
data2014May <- read_csv("~/Downloads/out-201405.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014May <- na.omit(data2014May)
data2014June <- read_csv("~/Downloads/out-201406.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014June <- na.omit(data2014June)
data2014July <- read_csv("~/Downloads/out-201407.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014July <- na.omit(data2014July)
data2014August <- read_csv("~/Downloads/out-201408.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014August <- na.omit(data2014August)
data2014September <- read_csv("~/Downloads/out-201409.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014September <- na.omit(data2014September)
data2014October <- read_csv("~/Downloads/out-201410.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014October <- na.omit(data2014October)
data2014November <- read_csv("~/Downloads/out-201411.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014November <- na.omit(data2014November)
data2014December <- read_csv("~/Downloads/out-201412.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014December <- na.omit(data2014December)
data2015January <- read_csv("~/Downloads/out-201501.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2015January <- na.omit(data2015January)

# To create one major dataset with all the data above
dataset <- rbind(data2014February, data2014March, data2014March, data2014April, data2014May, data2014June, data2014July, data2014August, data2014September, data2014October, data2014November, data2014December, data2015January)
dataset$`F&B_Overall_Experience_H` <- ceiling(dataset$`F&B_Overall_Experience_H`) # to round up the values in the last colunn
View(dataset)
str(dataset)

######################### TO EXPORT THE NEW FULL DATASET ######################### 
# To save the full dataset 
write.csv(dataset, '~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetFull.csv')
##################################################################################


            # STEP 1(b) (Please come back to this step a bit later in the report)

# To see if there are major gaps in the types of services offered by the NYC hotels only (Let's import the last month!) 
# THIS STEP WAS ADDED BEFORE DEFINING OUR BUSINESS QUESTIONS. 
library(readr)
HotelServices <- read_csv("~/Downloads/out-201501.csv")[,c("Country_PL", "City_PL", "Hotel Name-Long_PL","All Suites_PL", "Bell Staff_PL","Boutique_PL","Business Center_PL", "Casino_PL","Conference_PL", "Convention_PL", "Dry-Cleaning_PL","Elevators_PL","Fitness Center_PL", "Fitness Trainer_PL","Golf_PL", "Indoor Corridors_PL", "Laundry_PL","Limo Service_PL","Mini-Bar_PL","Pool-Indoor_PL","Pool-Outdoor_PL","Regency Grand Club_PL","Resort_PL","Restaurant_PL", "Self-Parking_PL","Shuttle Service_PL","Ski_PL","Spa_PL","Spa services in fitness center_PL", "Spa online booking_PL","Spa F&B offering_PL","Valet Parking_PL")]
HotelServices <- data.frame(HotelServices[HotelServices$City_PL == "New York",]) # to only keep NYC
sum(is.na(HotelServices)) # To see how many NAs there are in the dataset.
HotelServices[is.na(HotelServices)] <- "NO DATA" # To replace the NAs
HotelServicesSummary <- unique(HotelServices) # To only keep each hotel's info
rownames(HotelServicesSummary) <- NULL # To reindex the data
HotelServicesSummary$Country_PL <- NULL # to delete the location info (not needed anymore)
HotelServicesSummary$City_PL <- NULL # to delete the location info (not needed anymore)
HotelServicesSummary$Hotel.Name.Long_PL <- NULL # to delete the location info (not needed anymore)
UniqueValues = unique(do.call(c,HotelServicesSummary)) # to get all the unique values in the dataframe  # This command was found on Stackoverflow
HotelServicesSummary <- sapply(UniqueValues,function(x)colSums(HotelServicesSummary==x)) # to count all the occurrences of x in each row
HotelServicesSummary = t(HotelServicesSummary) # to transpose the dataset (flip columns and rows)
HotelServicesSummary <- HotelServicesSummary[-2,] # Now we can remove the NO DATA row
View(HotelServicesSummary)
      # --> We see that overall, all the NYC hotels offer the same types of services as the numbers are quite consistent. Thus, we will keep this data in our analysis.
      # In any case, if a customer is unhappy because of the services offered by their hotel, that will be relfected in our "overall satisfaction" or "condition of the hotel" variables.

######################### TO EXPORT THE SERVICES BY NYC HOTEL DATASET ##################### (Even though we will not use it in this analysis)
# To save the full dataset 
write.csv(HotelServicesSummary, '~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetServicesByNYCHotel.csv')
###########################################################################################










      # THE ANALYSIS STARTS HERE!

##################################################################################
# DATA PREP AND ANALYSIS
##################################################################################


# Load packages
library(readr)
library(ggplot2)
library(RColorBrewer)


######################### TO IMPORT THE FULL SORTED DATASET ######################### 
dataset <- read_csv('/Users/davidforteguerre/Google Drive/2-SCHOOL/2-M.A. SU/#3 IST687 Saltz/7-Final Project/5-Datasets/datasetFull.csv')
dataset$X1 <- NULL # to delete the automatically inserted column
View(dataset)
#####################################################################################  


    # STEP 2

# Let's first check that the NPS_Type variable was created accordingly to the Likelihood_To_Recommend one:
    # Promoters: 9, 10
    # Passives: 7, 8
    # Detractors: 0, 1, 2, 3, 4, 5, 6
# Let's use the unique function in order to do this, which returns a vector, data frame or array like x but with duplicate elements/rows removed.
# For example: 
unique(dataset$NPS_Type) # This outputs [1] "Promoter"  "Passive"   "Detractor", which shows the three possible options within the variable NPS_Type

      # Let's now check using the tapply function as well
# Promoters?
tapply(dataset$Likelihood_Recommend_H, dataset$NPS_Type=="Promoter", unique) # This outputs [1] 10  9
# Passives?
tapply(dataset$Likelihood_Recommend_H, dataset$NPS_Type=="Passive", unique) # This outputs [1] 8 7
# Detractors?
tapply(dataset$Likelihood_Recommend_H, dataset$NPS_Type=="Detractor", unique) # This outputs [1] 6 3 5 2 4 1
# --> Perfect! Whoever created the NPS_Type column did it correctly.





      # STEP 3

# To show which country has the largest amount of data
ResultsCountry <- data.frame(table(dataset$Country_PL))
ResultsCountry <- ResultsCountry[order(-ResultsCountry$Freq),]
rownames(ResultsCountry) <- NULL
cnames <- colnames(ResultsCountry)
cnames[1] <- "Country"
cnames[2] <- "Surveys"
colnames(ResultsCountry) <- cnames
ResultsCountry <- head(ResultsCountry, 10)
ResultsCountry

          # to plot the results
k <- ggplot(ResultsCountry,aes(x=Country, y=reorder(Surveys, Country), group=1))
# k <- ggplot(ResultsCountry,aes(x=Country, y=Country, group=1))
k <- k + geom_col(fill="royalblue4")
k <- k + theme(axis.text.x = element_text(angle = 90, hjust = 1))
k <- k + xlab("Country") + ylab("Number of surveys") + labs(fill='Legend')
k <- k + ggtitle('Number of Complete Surveys by Country')
k <- k + theme(axis.text.x = element_text(angle=45))
k



# To show which city has the largest amount of data
ResultsCity <- data.frame(table(dataset$City_PL))
ResultsCity <- ResultsCity[order(-ResultsCity$Freq),]
rownames(ResultsCity) <- NULL
cnames <- colnames(ResultsCity)
cnames[1] <- "City"
cnames[2] <- "Surveys"
colnames(ResultsCity) <- cnames
ResultsCity <- head(ResultsCity, 10)
ResultsCity

        # to plot the results
l <- ggplot(ResultsCity,aes(x=City, y=Surveys, group=1))
l <- l + geom_col(fill="royalblue4")
l <- l + theme(axis.text.x = element_text(angle = 45, hjust = 1))
l <- l + xlab("City") + ylab("Number of urveys") 
l <- l + ggtitle('Number of Complete Surveys by City in the U.S.')
l




      # STEP 4

# Let's focus on NYC and only keep the NYC data
dataset <- data.frame(dataset[dataset$City_PL == "New York",])
View(dataset)






      # STEP 5

# To show the hotel names and how many surveys each of them contains
ResultsHotel <- data.frame(table(dataset$Hotel.Name.Long_PL))
ResultsHotel <- ResultsHotel[order(-ResultsHotel$Freq),]
rownames(ResultsHotel) <- NULL
cnames <- colnames(ResultsHotel)
cnames[1] <- "HotelName"
cnames[2] <- "Number"
colnames(ResultsHotel) <- cnames
ResultsHotel

        # to plot the results
m <- ggplot(ResultsHotel,aes(x=HotelName, y=Number, group=1))
m <- m + geom_col(fill="royalblue4")
m <- m + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
m <- m + xlab("Hotel") + ylab("Number of surveys") 
m <- m + ggtitle('Number of Surveys by Hotel in NYC')
m




      # STEP 6

# To calculate NPS per hotel

# FORMULA: (Number of Promoters — Number of Detractors) / (Number of Respondents) x 100

          # To check if all the data (3252 observations) is outpout by basic queries (there could be issues involving spaces, etc. as we've encountered before in the HW)
a <- length(which(dataset$NPS_Type=="Promoter"))
b <- length(which(dataset$NPS_Type=="Passive"))
c <- length(which(dataset$NPS_Type=="Detractor"))
a+b+c # This should output the same number of instances (3252). It does!


          # To create a function to calculate NPS based on the formula above
NPScalculation <- function(hotel) {
  NumberPromoters <- length(which(dataset$NPS_Type=="Promoter"&dataset$Hotel.Name.Long_PL==hotel))
  NumberDetractors <- length(which(dataset$NPS_Type=="Detractor"&dataset$Hotel.Name.Long_PL==hotel))
  NumberRespondents <- length(which(dataset$Hotel.Name.Long_PL==hotel))
  hotelNPS <- ((NumberPromoters - NumberDetractors) / NumberRespondents)*100
  return(hotelNPS)
}

          # To calculate NPS for each hotel and store the results
hotelNPS1 <- NPScalculation("Grand Hyatt New York")
hotelNPS2 <- NPScalculation("Hyatt Times Square")
hotelNPS3 <- NPScalculation("Hyatt Place New York/Midtown-South")
hotelNPS4 <- NPScalculation("Andaz 5th Avenue")
hotelNPS5 <- NPScalculation("Hyatt Union Square New York")
hotelNPS6 <- NPScalculation("Andaz Wall Street")
hotelNPS7 <- NPScalculation("Hyatt 48 Lex")
hotelNPS8 <- NPScalculation("Park Hyatt New York")
hotelNPS9 <- NPScalculation("Hyatt Herald Square")

        # To create a dataframe with the results
HotelName <- ResultsHotel$HotelName
Surveys <- ResultsHotel$Number
NPS <- c(hotelNPS1, hotelNPS2, hotelNPS3, hotelNPS4, hotelNPS5, hotelNPS6, hotelNPS7, hotelNPS8, hotelNPS9)

NPSbyHotel <- data.frame(HotelName, Surveys, NPS)
NPSbyHotel

        # To plot the results
n <- ggplot(NPSbyHotel,aes(x=HotelName, y=NPS, group=1, fill=Surveys))
n <- n + geom_col()
n <- n + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
n <- n + xlab("Hotel") + ylab("NPS") 
n <- n + ggtitle('NPS by Hotel in NYC')
n <- n + scale_fill_gradient(high = "#132B43", low = "#56B1F7")
n



# CONCLUSIONS:
# No hotels with large amount of surveys stick out for having a very low NPS. Thus, we will not remove any hotels from the dataset for this analysis.
# Note that the only hotel that stands out for having a very low NPS is the hotel where there were only 20 surveys (i.e. the hotel with the smallest
# amount of data), and it would not be relevant to only focus on that specific hotel considering there are only 20 entries.





    # STEP 7

# To remove the unnecessary hotels information from the dataset now that we have a clean dataset (we do not need the following variables anymore: country, city, hotel name)
dataset$Country_PL <- NULL
dataset$City_PL <- NULL
dataset$Spirit_PL <- NULL
dataset$Hotel.Name.Long_PL <- NULL
View(dataset)






########################################################################################################################
                                              #### DESCRIPTIVE ANALYSIS & STATS #####
########################################################################################################################


    # STEP 8

# CUSTOMER PROFILES

      # NPS Type
NPSType <- data.frame(table(dataset$NPS_Type))
NPSType <- NPSType[order(-NPSType$Freq),]
rownames(NPSType) <- NULL
cnames <- colnames(NPSType)
cnames[1] <- "NPSType"
cnames[2] <- "Number"
colnames(NPSType) <- cnames
NPSType

            # to plot the results
u <- ggplot(NPSType,aes(x=NPSType, y=Number, group=1))
u <- u + geom_col(fill="royalblue4") 
u <- u + theme(axis.text.x = element_text(angle = 45, hjust = 1))
u <- u + xlab("Guest's Country") + ylab("Number") 
u <- u + ggtitle("NYC Customers: NPS Type")
u


      # Purpose of visit
PurposeOfVisit <- data.frame(table(dataset$POV_CODE_C))
PurposeOfVisit <- PurposeOfVisit[order(-PurposeOfVisit$Freq),]
rownames(PurposeOfVisit) <- NULL
cnames <- colnames(PurposeOfVisit)
cnames[1] <- "PurposeOfVisit"
cnames[2] <- "Number"
colnames(PurposeOfVisit) <- cnames
PurposeOfVisit

              # to plot the results
s <- ggplot(PurposeOfVisit,aes(x=PurposeOfVisit, y=Number, group=1))
s <- s + geom_col(fill="royalblue4")
s <- s + theme(axis.text.x = element_text(angle = 45, hjust = 1))
s <- s + xlab("Trip type") + ylab("Number") 
s <- s + ggtitle('NYC Customers: Purpose of Visit')
s



    # Length of stay

          # To compute the average length of stay
AverageStay <- mean(dataset$LENGTH_OF_STAY_C)
AverageStay

          # To plot the results
o <- ggplot(dataset,aes(x=factor(0), LENGTH_OF_STAY_C)) + geom_boxplot(aes(middle = AverageStay), fill="royalblue4") 
o <- o + coord_cartesian(ylim=c(1, 7)) + ylab("Length of stay (in days)") + xlab("Average Length of Stay= 2.9 days")
o <- o + ggtitle('NYC Customers: Average Length of Stay') + stat_summary(fun.y = "mean", geom = "point", shape= 23, size= 4, fill= "white")
o



    # Gender
Gender <- data.frame(table(dataset$Gender_H))
Gender <- Gender[order(-Gender$Freq),]
rownames(Gender) <- NULL
cnames <- colnames(Gender)
cnames[1] <- "Gender"
cnames[2] <- "Number"
colnames(Gender) <- cnames
Gender

          # to plot the results
p <- ggplot(Gender,aes(x=Gender, y=Number, group=1))
p <- p + geom_col(fill="royalblue4")
p <- p + theme(axis.text.x = element_text(angle = 45, hjust = 1))
p <- p + xlab("Gender") + ylab("Number") 
p <- p + ggtitle('NYC Customers: Gender')
p





    # Age
CustomerAge <- data.frame(table(dataset$Age_Range_H))
CustomerAge <- CustomerAge[order(-CustomerAge$Freq),]
rownames(CustomerAge) <- NULL
cnames <- colnames(CustomerAge)
cnames[1] <- "AgeRange"
cnames[2] <- "Number"
colnames(CustomerAge) <- cnames
CustomerAge

        # to plot the results
q <- ggplot(CustomerAge,aes(x=AgeRange, y=Number, group=1))
q <- q + geom_col(fill="royalblue4")
q <- q + theme(axis.text.x = element_text(angle = 45, hjust = 1))
q <- q + xlab("Age Range") + ylab("Number") 
q <- q + ggtitle('NYC Customers: Age Range')
q




    # Member status
MemberStatus <- data.frame(table(dataset$MEMBER_STATUS_R))
MemberStatus <- MemberStatus[order(-MemberStatus$Freq),]
rownames(MemberStatus) <- NULL
cnames <- colnames(MemberStatus)
cnames[1] <- "Status"
cnames[2] <- "Number"
colnames(MemberStatus) <- cnames
MemberStatus

        # to plot the results
r <- ggplot(MemberStatus,aes(x=Status, y=Number, group=1))
r <- r + geom_col(fill="royalblue4")
r <- r + theme(axis.text.x = element_text(angle = 45, hjust = 1))
r <- r + xlab("Loyalty Status") + ylab("Number") 
r <- r + ggtitle('NYC Customers: Status')
r





     # Guest Country
GuestCountry <- data.frame(table(dataset$GUEST_COUNTRY_R))
GuestCountry <- GuestCountry[order(-GuestCountry$Freq),]
rownames(GuestCountry) <- NULL
cnames <- colnames(GuestCountry)
cnames[1] <- "GuestCountry"
cnames[2] <- "Number"
colnames(GuestCountry) <- cnames
GuestCountry <- head(GuestCountry, 10)
GuestCountry

          # to plot the results
t <- ggplot(GuestCountry,aes(x=GuestCountry, y=Number, group=1))
t <- t + geom_col(fill="royalblue4")
t <- t + theme(axis.text.x = element_text(angle = 45, hjust = 1))
t <- t + xlab("Guest's Country") + ylab("Number") 
t <- t + ggtitle("NYC Customers: Guest's Country")
t






      # STEP 9

# Combining NPS type with other variables to try and discover patterns
     
 
    # Average length of stay by NPS Type

          # To create specific data frames for promoters only, passives only, and detractors only
datasetPromoters <- dataset[(dataset$NPS_Type=="Promoter"),]
datasetPassives <- dataset[(dataset$NPS_Type=="Passive"),]
datasetDetractors <- dataset[(dataset$NPS_Type=="Detractor"),]

          # To store the mean length of stay values for each NPS Type
MeanStayPro <- mean(datasetPromoters$LENGTH_OF_STAY_C)
MeanStayPas <- mean(datasetPassives$LENGTH_OF_STAY_C)
MeanStayDet <-mean(datasetDetractors$LENGTH_OF_STAY_C)
          # To create a dataframe
StayNames <- c("Promoters", "Passives", "Detractors")
StayAverages <- c(MeanStayPro, MeanStayPas, MeanStayDet)
AverageStay <- data.frame(StayNames, StayAverages)
AverageStay
           # to plot the results
v <- ggplot(AverageStay,aes(x=StayNames, y=StayAverages, group=1))
v <- v + geom_col(fill="royalblue4")
v <- v + theme(axis.text.x = element_text(angle = 45, hjust = 1))
v <- v + xlab("NPS Type") + ylab("Average Length of Stay (in days)") 
v <- v + ggtitle("NYC Customers: Average Length of Stay by NPS Type")
v




    # NPS type by Gender

          # To plot the results (using a grouped barchart)
w <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + facet_grid(.~dataset$Gender_H)
w <- w + geom_bar() + scale_y_continuous()
w <- w + xlab("Gender") + ylab("Number of customers") + labs(fill="NPS Type")
w <- w + ggtitle("NYC Customers: NPS Type by Gender") + scale_fill_brewer() # or add palette = "Set1" in the last command (but I like keeping it BLUE!)
w <- w + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) # to remove the grid and background
w <- w + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
w



    # NPS type by Age Range

          # To plot the results (using a grouped barchart)

x <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + facet_grid(.~dataset$Age_Range_H)
x <- x + geom_bar() + scale_y_continuous()
x <- x + xlab("Age Range") + ylab("Number of customers") + labs(fill="NPS Type")
x <- x + ggtitle("NYC Customers: NPS Type by Age Range") + scale_fill_brewer() # or add palette = "Set1" in the last command (but I like keeping it BLUE!)
x <- x + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) # to remove the grid and background
x <- x + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
x


    # NPS type by Purpose of Visit

          # To plot the results (using a grouped barchart)

y <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + facet_grid(.~dataset$POV_CODE_C)
y <- y + geom_bar() + scale_y_continuous()
y <- y + xlab("Purpose of Visit") + ylab("Number of customers") + labs(fill="NPS Type")
y <- y + ggtitle("NYC Customers: NPS Type by Purpose of Visit") + scale_fill_brewer() # or add palette = "Set1" in the last command (but I like keeping it BLUE!)
y <- y + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) # to remove the grid and background
y <- y + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
y


    # NPS type by Member Status

          # To plot the results (using a grouped barchart)

z <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + facet_grid(.~dataset$MEMBER_STATUS_R)
z <- z + geom_bar() + scale_y_continuous()
z <- z + xlab("Member Status") + ylab("Number of customers") + labs(fill="NPS Type")
z <- z + ggtitle("NYC Customers: NPS Type by Member Status") + scale_fill_brewer() # or add palette = "Set1" in the last command (but I like keeping it BLUE!)
z <- z + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) # to remove the grid and background
z <- z + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
z


      # NPS type by (first 10) Guest Country

            # To show the first 10 guest countries in the dataset
ResultsGuestCountry <- data.frame(table(dataset$GUEST_COUNTRY_R))
ResultsGuestCountry <- ResultsGuestCountry[order(-ResultsGuestCountry$Freq),]
rownames(ResultsGuestCountry) <- NULL
cnames <- colnames(ResultsGuestCountry)
cnames[1] <- "Country"
cnames[2] <- "Surveys"
colnames(ResultsGuestCountry) <- cnames
ResultsGuestCountry <- head(ResultsGuestCountry, 10)
ResultsGuestCountry
            # To create a new dataframe keeping only those 10 guest countries
dataset2 <- dataset[(dataset$GUEST_COUNTRY_R=="UNITED STATES"|dataset$GUEST_COUNTRY_R=="CANADA"|dataset$GUEST_COUNTRY_R=="UNITED KINGDOM"|dataset$GUEST_COUNTRY_R=="AUSTRALIA"|dataset$GUEST_COUNTRY_R=="GERMANY"|dataset$GUEST_COUNTRY_R=="FRANCE"|dataset$GUEST_COUNTRY_R=="SWITZERLAND"|dataset$GUEST_COUNTRY_R=="JAPAN"|dataset$GUEST_COUNTRY_R=="SINGAPORE"|dataset$GUEST_COUNTRY_R=="ITALY"),]
# View(dataset2)

           # To plot the results (using a grouped barchart)
h <- ggplot(data=dataset2, aes(x=dataset2$NPS_Type, fill=dataset2$NPS_Type)) + facet_grid(.~dataset2$GUEST_COUNTRY_R)
h <- h + geom_bar() + scale_y_continuous()
h <- h + xlab("Guest Country") + ylab("Number of customers") + labs(fill="NPS Type")
h <- h + ggtitle("NYC Customers: NPS Type by First 10 Guest Countries ") + scale_fill_brewer() # or add palette = "Set1" in the last command (but I like keeping it BLUE!)
h <- h + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) # to remove the grid and background
h <- h + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
h













############################### LET'S START FRESH! ###############################
# rm(list=ls()) # to clear the environment 
# graphics.off() # to clear the plots
# cat("\f") # to clear the console
##################################################################################







########################################################################################################################
                                          #### MODELING TECHNIQUES AND PREDICTIVE ANALYSIS #####
########################################################################################################################

# Load packages
library(readr)
library(ggplot2)
library(RColorBrewer)

######################### TO IMPORT THE NYC DATASET ######################### 
dataset <- read_csv('~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetFull.csv') # to import the dataset again
dataset$X1 <- NULL # to delete the automatically inserted column
dataset <- data.frame(dataset[dataset$City_PL == "New York",]) # to only keep the NYC data
# dataset <- data.frame(dataset[dataset$Country_PL == "United States",]) # to only keep the U.S. data
dataset$Country_PL <- NULL # to delete the location information we don't need anymore
dataset$City_PL <- NULL
dataset$Spirit_PL <- NULL
dataset$Hotel.Name.Long_PL <- NULL
View(dataset)
#####################################################################################  




      # STEP 10

# 1. LINEAR REGRESSION


######PREPARING DATA FRAME TO ONLY CONTAIN VARIABLES NEEDED FOR LM########

#REMOVE UNCESSARY COLUMNS SUCH AS CUSTOMER PROFILE INFO:
dataset$Country_PL<- NULL
dataset$City_PL<- NULL
dataset$Spirit_PL <- NULL #delete info
dataset$Hotel.Name.Long_PL <- NULL #delete the location info
dataset$NPS_Type<- NULL
dataset$POV_CODE_C<- NULL	
dataset$MEMBER_STATUS_R<- NULL
dataset$LENGTH_OF_STAY_C<- NULL	
dataset$ADULT_NUM_C	<- NULL
dataset$GUEST_COUNTRY_R	<- NULL
dataset$Gender_H	<- NULL
dataset$Age_Range_H <- NULL
View(dataset)

#DEFINITIONS FOR EACH METRIC
#Check_In_H - Quality of the check in process metric; value on a 1 to 10 scale
#Condition_Hotel_H - Condition of hotel metric; value on a 1 to 10 scale
#Customer_SVC_H - Quality of customer service metric; value on a 1 to 10 scale
#F&B_Overall_Experience_H	- Overal F&B experience metric; value on a 1 to 10 scale
#Guest_Room_H - Guest room satisfaction metric; value on a 1 to 10 scale
#Internet_Sat_H - Internet satisfaction metric; value on a 1 to 10 scale
#Likelihood_Recommend_H - Likelihood to recommend metric; value on a 1 to 10 scale
#Overall_Sat_H - Overall satisfaction metric; value on a 1 to 10 scale
#Staff_Cared_H - Staff cared metric; value on a 1 to 10 scale
#Tranquility_H	 - Tranquility metric; value on a 1 to 10 scale

##############################################################################
########################PERFORMING EXPLORATORY ANALYSIS######################
##############################################################################

#Establish the null hypothesis: [x]variable(s) have no effect on
#the Dependent Variable: Likelihood to Recommend. 


##########################FIRST STAGE###################################
#TEST SINGLE VARIABLES AGAINST LIKELIHOOD TO RECOMMEND

#TEST VARIABLE OVERALL SATISFACTION
#0: Overall_Sat_H	
TestV0 <- ggplot(dataset, aes(x= Overall_Sat_H, y= Likelihood_Recommend_H))+geom_point(color="orange") + stat_smooth(method = "lm", col = "blue")+ ggtitle("Likelihood to Recommend vs. Overall_Sat_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV0 # Display plot

#Overall Sat seems too good to be true. Investigate further:
predV0<- lm(formula=Likelihood_Recommend_H ~ Overall_Sat_H,  data=dataset)
predV0 # Display info
summary(predV0) #Display summary of info
summary(predV0)$r.squared
summary(predV0)$adj.r.squared

##DECIDED TO EXCLUDE OVERALL SAT BECAUSE IT IS DETERMINED TO BE DERRIVED FROM VARIOUS OTHER METRICS THAT WILL UNFAIRLY INFLUENCE OR SKEW THE RESULTS
#For example, the R-sqaured value indicates 79% of the model can be explained using this variable, which is unlikely in comparison to all the other variables results.

dataset$Overall_Sat_H <- NULL

View(dataset)

#CONTINUE TESTING ALL OTHER INDEPENDENT VARIABLES
#1 Guest_Room_H
TestV1 <- ggplot(dataset, aes(x= Guest_Room_H , y=Likelihood_Recommend_H))+geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Guest_Room_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV1 #Display plot

#2 Tranquility_H	
TestV2 <- ggplot(dataset, aes(x= Tranquility_H , y=Likelihood_Recommend_H))+geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Tranquility_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV2 #Display plot

#3 Condition_Hotel_H	
TestV3 <- ggplot(dataset, aes(x= Condition_Hotel_H, y=Likelihood_Recommend_H))+geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Condition_Hotel_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV3 #Display plot

#4 Customer_SVC_H	
TestV4 <- ggplot(dataset, aes(x= Customer_SVC_H, y=Likelihood_Recommend_H))+geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Customer_SVC_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV4 #Display plot

#5 Staff_Cared_H
TestV5 <- ggplot(dataset, aes(x= Staff_Cared_H, y= Likelihood_Recommend_H))+geom_point(color="orange") +stat_smooth(method = "lm", col = "blue") + ggtitle("Likelihood to Recommend vs. Staff_Cared_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV5 #Display plot

#6 Internet_Sat_H	
TestV6 <- ggplot(dataset, aes(x= Internet_Sat_H , y=Likelihood_Recommend_H))+geom_point(color="orange") +stat_smooth(method = "lm", col = "blue") + ggtitle("Likelihood to Recommend vs. Internet_Sat_H	")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV6 #Display plot

#7 Check_In_H
TestV7 <- ggplot(dataset, aes(x= Check_In_H, y=Likelihood_Recommend_H))+geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Check_In_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV7 #Display plot

#8 F.B_Overall_Experience_H
TestV8 <- ggplot(dataset, aes(x= F.B_Overall_Experience_H  , y=Likelihood_Recommend_H))+geom_point(color="orange") +stat_smooth(method = "lm", col = "blue") + ggtitle("Likelihood to Recommend vs. F.B_Overall_Experience_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestV8 #Display plot

#OBSERVATIONS BASED ON EXPLORATORY ANALYSIS:

#the best independent predictors seem to be:
#1.Condition_Hotel_H
#2. Customer_SVC_H	
#3.Staff_Cared_H
#3.Guest_Room_H
#4. Tranquility_H

# the worst independent predictors seem to be:
#1. Internet_Sat_H	
#2. F.B_Overall_Experience_H
#3. Check_In_H

##########################SECOND STAGE ######################################
#TEST COMBINATIONS OF LIKELY INFLUENTIAL VARIABLES (MULTIPLE LINEAR REGRESSIONS)

#First test my estimated best fit based on the best predictors assumed by my exploratory analysis

#TEST LIKELIHOOD AGAINST:

#Condition_Hotel_H+ Customer_SVC_H + Staff_Cared_H

TestCombination0 <- ggplot(dataset, aes(x= Condition_Hotel_H+ Customer_SVC_H + Staff_Cared_H, y= Likelihood_Recommend_H))+geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Condition_Hotel_H+ Guest_Room_H+ Tranquility_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestCombination0 # Display plot

#check regressions
TestComboPred0<- lm(formula=Likelihood_Recommend_H ~ Condition_Hotel_H+ Customer_SVC_H + Staff_Cared_H,  data=dataset)
TestComboPred0 # Display info
summary(TestComboPred0) #Display summary of info
summary(TestComboPred0)$r.squared
summary(TestComboPred0)$adj.r.squared

#Now Test other models with different combinations

#TEST LIKELIHOOD AGAINST:
#Condition_Hotel_H+ Guest_Room_H+ Tranquility_H

TestCombination1 <- ggplot(dataset, aes(x= Condition_Hotel_H+ Guest_Room_H+ Tranquility_H, y= Likelihood_Recommend_H))+geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Condition_Hotel_H+ Guest_Room_H+ Tranquility_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestCombination1 # Display plot

#check regressions
TestComboPred1<- lm(formula=Likelihood_Recommend_H ~ Condition_Hotel_H+ Guest_Room_H+ Tranquility_H,  data=dataset)
TestComboPred1 # Display info
summary(TestComboPred1) #Display summary of info
summary(TestComboPred1)$r.squared
summary(TestComboPred1)$adj.r.squared

#TEST LIKELIHOOD AGAINST:
#Condition_Hotel_H+ Guest_Room_H+ Staff_Cared_H

TestCombination2 <- ggplot(dataset, aes(x= Condition_Hotel_H+ Guest_Room_H+ Staff_Cared_H, y= Likelihood_Recommend_H)) + geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Condition_Hotel_H+ Guest_Room_H+ Staff_Cared_H
                                                                                                                                                                                                        ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestCombination2 # Display plot

#check regressions
TestComboPred2<- lm(formula=Likelihood_Recommend_H ~ Condition_Hotel_H+ Guest_Room_H+ Staff_Cared_H,  data=dataset)
TestComboPred2 # Display info
summary(TestComboPred2) #Display summary of info
summary(TestComboPred2)$r.squared
summary(TestComboPred2)$adj.r.squared

#TEST LIKELIHOOD AGAINST:
# Condition_Hotel_H+ Guest_Room_H+ Tranquility_H+ Customer_SVC_H

TestCombination3 <- ggplot(dataset, aes(x= Condition_Hotel_H+ Guest_Room_H+ Tranquility_H+ Customer_SVC_H, y=Likelihood_Recommend_H)) +geom_point(color="orange")+stat_smooth(method = "lm", col = "blue")  + ggtitle("Likelihood to Recommend vs. Condition_Hotel_H+ Guest_Room_H+ Tranquility_H+ Customer_SVC_H ")  #using ggplot to create a plot to predict Likelihood to recommend 
TestCombination3 # Display plot

#check regressions
TestComboPred3<- lm(formula=Likelihood_Recommend_H ~ Condition_Hotel_H+ Guest_Room_H+ Tranquility_H+ Customer_SVC_H,  data=dataset)
TestComboPred3 # Display info
summary(TestComboPred3) #Display summary of info
summary(TestComboPred3)$r.squared
summary(TestComboPred3)$adj.r.squared

##########################THIRD STAGE###################################
#USING PREDICTIVE MODEL TESTING MULTIPLE VARIABLES AGAINST LIKELIHOOD TO RECOMMEND

#PERFORMING BACKWARD ELIMINATION (recommend the most parsimonious model)
#stepping through each combination of variables to determine which is the most parsimonious (i.e., the one that did the best job with the fewest predictors). 
#This will show which model does the best job showing influence on the dependent variable.
# The Akaike Information Criterion (AIC) is an estimator of the relative quality of statistical models for a given set of data. 
# Given a collection of models for the data, AIC estimates the quality of each model, relative to each of the other models (i.e. the one with the lowest AIC is best)
# Parsimonious models have optimal parsimony, or just the right amount of predictors needed to explain the model well. One caveat being, One downside is that the AIC says nothing about quality. If you input a series of poor models, the AIC will choose the best from that poor-quality set.
#Source: http://www.statisticshowto.com/parsimonious-model/
#FINDING THE MOST PARSIMONIOUS MODEL BADED ON METRICS/CUSTOMER RATINGS. 

#Test against all variables
MostPar1<- lm(formula=Likelihood_Recommend_H ~ .,  data=dataset)
MostPar1 # Display plot
step(MostPar1,data=dataset, direction="backward")

summary(MostPar1) #Display summary of info
summary(MostPar1)$r.squared
summary(MostPar1)$adj.r.squared

##########################FOURTH STAGE###################################
#ELIMINATE AND REMOVE UNNECCESAY VARIABLES AND CONDUCT PREDICTIVE MODEL AGAIN, TESTING MULTIPLE VARIABLES AGAINST LIKELIHOOD TO RECOMMEND

#Judging from the estimates. We see ‘Internet_Sat_H’ and ‘Check_In_H’ are not significant so let’s remove those and run most parsimonious to see if we get an even better model.

#Removing not significant variables
dataset$Internet_Sat_H <- NULL
dataset$Check_In_H <- NULL

#Test against all variables again
MostPar1<- lm(formula=Likelihood_Recommend_H ~ .,  data=dataset)
MostPar1 # Display plot
step(MostPar1,data=dataset, direction="backward")

summary(MostPar1) #Display summary of info
summary(MostPar1)$r.squared
summary(MostPar1)$adj.r.squared






















      # STEP 11

# 2. ASSOCIATION RULES

library(arules)
library(arulesViz)
library(readr)

      # To import dataset 

####################################### TO IMPORT THE FULL DATASET ######################################
dataset <- read_csv('~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetFull.csv') # to import the dataset again
dataset$X1 <- NULL # to delete the automatically inserted column
# dataset <- data.frame(dataset[dataset$City_PL == "New York",]) # to only keep the NYC data
dataset <- data.frame(dataset[dataset$Country_PL == "United States",]) # to only keep the U.S. data
dataset$Country_PL <- NULL # to delete the location information we don't need anymore
dataset$City_PL <- NULL
dataset$Spirit_PL <- NULL
dataset$Hotel.Name.Long_PL <- NULL
View(dataset)
#########################################################################################################

      # To remove the unwanted variables for aRules
dataset$Likelihood_Recommend_H <- NULL # We will predict NPS_Type with aRules, so we need to remove this.
dataset$Overall_Sat_H <- NULL # We showed in the previous aprt (linear regression) that we need to take out this column for the algorithms to work well, Indeed, with aRules, we're trying to predict "NPS_Type".

       # To see the data structure
str(dataset)

      # To convert the first set of fariables to factors
dataset$NPS_Type = factor(dataset$NPS_Type)
dataset$POV_CODE_C = factor(dataset$POV_CODE_C)
dataset$MEMBER_STATUS_R = factor(dataset$MEMBER_STATUS_R)
dataset$LENGTH_OF_STAY_C = factor(dataset$LENGTH_OF_STAY_C)
dataset$GUEST_COUNTRY_R = factor(dataset$GUEST_COUNTRY_R)
dataset$Gender_H = factor(dataset$Gender_H)
dataset$Age_Range_H = factor(dataset$Age_Range_H)

      # To create bins with the metrics/scores variables (Note that these variables will automatically be created as factors)
dataset$Guest_Room_H <- cut(dataset$Guest_Room_H, breaks = c(0, 4, 7, 10), labels=c("Guest_Room_H_LOW", "Guest_Room_H_MID", "Guest_Room_H_HIGH"))
dataset$Tranquility_H <- cut(dataset$Tranquility_H, breaks = c(0, 4, 7, 10), labels=c("Tranquility_H_LOW", "Tranquility_H_MID", "Tranquility_H_HIGH"))
dataset$Condition_Hotel_H <- cut(dataset$Condition_Hotel_H, breaks = c(0, 4, 7, 10), labels=c("Condition_Hotel_H_LOW", "Condition_Hotel_H_MID", "Condition_Hotel_H_HIGH"))
dataset$Customer_SVC_H <- cut(dataset$Customer_SVC_H, breaks = c(0, 4, 7, 10), labels=c("Customer_SVC_H_LOW", "Customer_SVC_H_MID", "Customer_SVC_H_HIGH"))
dataset$Staff_Cared_H <- cut(dataset$Staff_Cared_H, breaks = c(0, 4, 7, 10), labels=c("Staff_Cared_H_LOW", "Staff_Cared_H_MID", "Staff_Cared_H_HIGH"))
dataset$Internet_Sat_H <- cut(dataset$Internet_Sat_H, breaks = c(0, 4, 7, 10), labels=c("Internet_Sat_H_LOW", "Internet_Sat_H_MID", "Internet_Sat_H_HIGH"))
dataset$Check_In_H <- cut(dataset$Check_In_H, breaks = c(0, 4, 7, 10), labels=c("Check_In_H_LOW", "Check_In_H_MID", "Check_In_H_HIGH"))
dataset$F.B_Overall_Experience_H <- cut(dataset$F.B_Overall_Experience_H, breaks = c(0, 4, 7, 10), labels=c("F.B_Overall_Experience_H_LOW", "F.B_Overall_Experience_H_MID", "F.B_Overall_Experience_H_HIGH"))

        # To check the data structure one last time
View(dataset)
str(dataset) # Perfect, every variable is now a factor, and bins have been created.


        # To delete the unwanted descriptive variables to havea clean dataset
dataset$POV_CODE_C <- NULL
dataset$MEMBER_STATUS_R <- NULL
dataset$LENGTH_OF_STAY_C <- NULL
dataset$GUEST_COUNTRY_R <- NULL
dataset$Gender_H <- NULL
dataset$Age_Range_H <- NULL
View(dataset)

##############################################################################################################


# Let's now run the aRules algorithm, predicting NPS_Type with the customer metrics/scores only (starting at the "Guest_Room_H" variables and below!)

# NOTE: 
# We found no good rules for passives, unless we lowered the confidence under 0.2 (which isn't worth it) (which is under 0.5, thus the rules aren't relevant.)
# So we'll keep it binary as Professor Krudys suggested.


# Promoters
RulesPromoters = apriori(dataset, parameter=list(support=0.01, confidence=0.8, maxlen=3), appearance=list(rhs='NPS_Type=Promoter'))
summary(RulesPromoters)
inspect(RulesPromoters)
plot(RulesPromoters, main="Rules for Promoters")

## Passives
# RulesPassives= apriori(dataset, parameter=list(support=0.01, confidence=0.3, maxlen=3), appearance=list(rhs='NPS_Type=Passive'))
# summary(RulesPassives)
# inspect(RulesPassives)
# plot(RulesPassives, main="Rules Passives")

# Detractors
RulesDetractors = apriori(dataset, parameter=list(support=0.01, confidence=0.8, maxlen=3), appearance=list(rhs='NPS_Type=Detractor'))
summary(RulesDetractors)
inspect(RulesDetractors)
plot(RulesDetractors, main="Rules for Detractors")









##### FURTHER aRules ANALYSIS #######

#Step1 converting the dataset again
#A new data frame for to calculate from the dataset
df = data.frame(sapply(dataset,as.factor))
str(df)

#Step2 Creating rules
#aRules - Rules 
NYrules = apriori(df, parameter = list(support = 0.3, confidence = 0.7, maxlen = 3))
inspect(NYrules)
NYrulesI = apriori(df, parameter = list(support = 0.7, confidence = 0.7, maxlen = 3)) 
inspect(NYrulesI)
promoter = apriori(df, parameter = list(support=0.3, confidence = 0.7, maxlen = 3), appearance=list(rhs='NPS_Type=Promoter',default='lhs'))
inspect(promoter)
detractor = apriori(df, parameter = list(support = 0.01, confidence = 0.8, maxlen = 3), appearance=list(rhs='NPS_Type=Detractor',default='lhs'))
inspect(detractor)
passive = apriori(df, parameter = list(support = 0.01, confidence = 0.3, maxlen = 3), appearance=list(rhs='NPS_Type=Passive',default='lhs'))
inspect(passive)

    #Visualisation  
#Plot1 
plot(grules.detractor)
plot(NYrules, main="NYC Plot 1")
plot(NYrulesI, main="NYC Plot 2")
plot(promoter, main="Promoter Guests")
plot(detractor, main="Detractor Guests")
plot(passive, main="Passive Guests")
#Plot2
plot(NYrules, method = "graph", control=list(type="items"))
plot(NYrulesI, method = "graph", control=list(type="items"))
plot(promoter, method="graph", control=list(type="items"))
plot(detractor, method="graph", control=list(type="items"))
plot(passive, method="graph", control=list(type="items"))


#Further analysis of the rules via sections of the dataset
Promoters <- subset(NYrules, rhs %in% "NPS_Type=Promoter")
inspect(Promoters)
Unorule <- Promoters[quality(Promoters)$confidence > 0.5]
inspect(Unorule)
plot(Unorule, main = "Promoters")
plot(Unorule, method="graph", control=list(type="items"))

#Does Internet matter to hotel guests?
InternetMatter <- subset(NYrulesI, rhs %in% "Internet_Sat_H=Internet_Sat_H_HIGH")
inspect(InternetMatter)
dosrule <- InternetMatter[quality(InternetMatter)$support > 0.7]
inspect(dosrule)
plot(dosrule, main = "Internet Matters")
plot(dosrule, method="graph", control=list(type="items"))

#Do condition of hotels matter??
HotelCondition <- subset(NYrulesI, rhs %in% "Condition_Hotel_H=Condition_Hotel_H_HIGH")
inspect(HotelCondition)
tresrule <- HotelCondition[quality(HotelCondition)$support > 0.75]
inspect(tresrule)
plot(tresrule, main = "Hotel Conditions")
plot(tresrule, method="graph", control=list(type="items"))

#Hotel Tranquility impacts guests?
tranqguest <- subset(NYrulesI, rhs %in% "Tranquility_H=Tranquility_H_HIGH")
inspect(tranqguest)
fourthrule <- tranqguest[quality(tranqguest)$confidence > 0.8]
inspect(fourthrule)
plot(fourthrule, main = "Hotel Tranquility")
plot(fourthrule, method="graph", control=list(type="items"))

#Staff impacts guests? 
staffcared <- subset(NYrules, rhs %in% "Staff_Cared_H=Staff_Cared_H_HIGH")
inspect(staffcared)
fifthrule <- staffcared[quality(staffcared)$confidence > 0.7]
inspect(fifthrule)
plot(fifthrule, main = "Staff Cared Rule")
plot(fifthrule, method = "graph", control=list(type="items"))

#Condition of the Hotel imapcts guesets?
SVC <- subset(NYrules, rhs %in% "Customer_SVC_H=Customer_SVC_H_HIGH")
inspect(SVC)
sixth <- SVC[quality(SVC)$confidence > 0.99]
inspect(sixth)
plot(sixth, main = "Customer High SVC Score")
plot(sixth, method = "graph", control=list(type="items"))

#Check in relates to customer satisfaction?
checkin <- subset(NYrules, rhs %in% "Check_In_H=Check_In_H_HIGH")
inspect(checkin)
eight <- checkin[quality(checkin)$confidence > 0.8]
inspect(eight)
plot(eight, main = "Check-In Relates to Satisfaction")
plot(eight, method = "graph", control=list(type="items"))






















      # STEP 12

# 3. SUPPORT VECTOR MACHINES


# SUPPORT VECTOR MACHINE
dataset <- read.csv("~/Desktop/IST-687/Project/datasetNYC.csv")
dataset$X1 <- NULL # to delete the automatically insereted column
View(dataset)
library("kernlab")
#2/3
cut_point <-floor(2*dim(dataset)[1]/3) #cut2/3
traindata <- dataset[1:cut_point,-10]# 2/3 of data is traindata
#1/3
testdata <- dataset[(cut_point+1):dim(dataset)[1],-10]# 1/3 of data is testdata
cut_point2_3


# calcualting cost function using three models M1,M2.M3
#ml1
ml1<-ksvm(NPS_Type~.,data=traindata,kernel="rbfdot",C=12)#C is parameter for Cost function
predict_value<-predict(ml1,testdata,type="response")# predict NPS_type by using ml1
sum(testdata$NPS_Type==predict_value)/length(testdata$NPS_Type) #calculate accurate rate
numrize_real<-as.numeric(testdata$NPS_Type)#real nps pricission  value
numrize_predict<-as.numeric(predict_value)#predict nps
rmse=mean((numrize_predict-numrize_real)^2)# calculating the rmse ,(lower the better)
rmse  # dispaly the rmse values



#ml2
ml2<-ksvm(NPS_Type~+Customer_SVC_H+Guest_Room_H
          +Condition_Hotel_H+Staff_Cared_H+Tranquility_H+Check_In_H+
            F.B_Overall_Experience_H+Internet_Sat_H,
          data=traindata,kernel="rbfdot",C=8)#use different colums for modelling
predict_value<-predict(ml2,testdata,type="response")
sum(testdata$NPS_Type==predict_value)/length(testdata$NPS_Type)
numrize_real<-as.numeric(testdata$NPS_Type)#real nps
numrize_predict<-as.numeric(predict_value)#predict nps
rmse=mean((numrize_predict-numrize_real)^2) # calcualting the rmse
rmse

#ml3
ml3<-ksvm(NPS_Type~ +Customer_SVC_H+Guest_Room_H+Condition_Hotel_H,data=traindata,kernel="rbfdot",C=8)
predict_value<-predict(ml3,testdata,type="response")# predict NPS_type by using ml1
sum(testdata$NPS_Type==predict_value)/length(testdata$NPS_Type) #calculate accurate rate
numrize_real<-as.numeric(testdata$NPS_Type)#real nps
numrize_predict<-as.numeric(predict_value)#predict nps
rmse=mean((numrize_predict-numrize_real)^2)#lower the better
rmse



#new_rmse<-rep(0.1,5)#init 
#for(ccc in c(1:5)){
# new_ml<-ksvm(NPS_Type~.,data=traindata,kernel="rbfdot",C=ccc)#C is parameter for Cost function
# predict_value<-predict(new_ml,testdata,type="response")
# sum(testdata$NPS_Type==predict_value)/length(testdata$NPS_Type)
# numrize_real<-as.numeric(testdata$NPS_Type)#real nps
# numrize_predict<-as.numeric(predict_value)#predict nps
# new_rmse[ccc]<-mean((numrize_predict-numrize_real)^2)
# }


#ggplot()+geom_line(aes(x=c(1:5),y=new_rmse)) # displaying the line graph for rmse and conclude that model m1 is
# is the better value.

#data_new<-dataset[3,]# 1 choose #3 customer as an example
#data_new$Likelihood_Recommend_H<-10 #if he stayed 5 days
#predict(ml1,data_new,type="response") # we can predict the NPS will also be passive
#data_new$Likelihood_Recommend_H<-5 #if he stayed 5 days
#predict(ml1,Likelihood_Recommend_H,type="response") # we can predict the NPS will also be Detractor
#data_new$Likelihood_Recommend_H<-1 #if he stayed 5 days
#predict(ml1,data_new,type="response") # we can predict the NPS will also be detractor


# View(cor(dataset[,10:18]))


temp1 = with(data.frame(NPS_Type,Likelihood_Recommend_H,POV_CODE_C,MEMBER_STATUS_R, 
                        LENGTH_OF_STAY_C,GUEST_COUNTRY_R,Gender_H,Age_Range_H,
                        Guest_Room_H,Condition_Hotel_H,Customer_SVC_H,Staff_Cared_H,Internet_Sat_H,
                        Check_In_H,F.B_Overall_Experience_H),data=dataset)


temp1 = temp1[(temp1$Likelihood_Recommend_H<9),]
str(temp1)
temp1 = temp1[,-10]

svmfit = svm(Likelihood_Recommend_H ~ Customer_SVC_H,data = temp1,kernel = "linear",cost = 0.1,scale = FALSE)

plot(svmfit,temp1)
summary(svmfit)
fix(temp1)
p = predict(svmfit,temp1)
table(predict = p, truth = temp1$Likelihood_Recommend_H)

####################################################################

datasets <- read.csv("~/Desktop/IST-687/Project/datasetNYC.csv")
dim(dataset)
index = sample(1:dim(datasets)[1])
length(index)

head(index)

cut_point2_3 = floor(2* dim(datasets)[1]/3)
traindata= datasettttt[index[1:cut_point2_3],]

testdata <-datasets[index[(cut_point2_3+1):dim(datasets)[1]],]

traindata$Guest_Room_H[is.na(traindata$Guest_Room_H)]=mean(traindata$Guest_Room_H,na.rm = T)
traindata$Customer_SVC_H[is.na(traindata$Customer_SVC_H)]=mean(traindata$Customer_SVC_H,na.rm = T)
M<-svm(NPS_Type~Customer_SVC_H+Guest_Room_H,data = traindata)
plot(M,traindata,Customer_SVC_H~Guest_Room_H,slice=list(Staff_Cared_H=8,Guest_Room_H=10))


#-------------------------------------------------------------------------------------------
dataset <- read_csv('~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetFull.csv') # to import the dataset again
dataset$X1 <- NULL # to delete the automatically inserted column
# dataset <- data.frame(dataset[dataset$City_PL == "New York",]) # to only keep the NYC data
dataset <- data.frame(dataset[dataset$Country_PL == "United States",]) # to only keep the U.S. data
dataset$Country_PL <- NULL # to delete the location information we don't need anymore
dataset$City_PL <- NULL
dataset$Spirit_PL <- NULL
dataset$Hotel.Name.Long_PL <- NULL
View(dataset)

















# FINAL NOTES: 
# The team worked very well together, We met on a regular basis and made decisions together. 
# To write this report we looked up how to write a business report. 
# We also looked up what font(s) are typically used in business reports. etc. 



# FINAL CONCLUSIONS & RECOMMENDATIONS:
# Please see attached final report for final conclusions and recommendations.



















######################### USEFUL CODE & EXPERIMENTS (PLEASE DISREGARD THIS SECTION) ######################### 
      # To count and omit NAs
# sum(is.na(dataset)) # To see how many NAs in the dataset
# nrow(dataset) # Number of rows before removal
# dataset2 <- na.omit(dataset) # Let's remove those NAs by using the function we used last week
# nrow(dataset) # Number of rows after removal

      # To export the NYC dataset
# To save the NYC dataset 
# write.csv(dataset, "~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/z-Final Project/datasetNYC.csv")

      # To import the NYC dataset
# library(readr)
# dataset <- read_csv("~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/z-Final Project/datasetNYC.csv")
# dataset$X1 <- NULL # to delete the automatically inserted column
# View(dataset)


      # To get a the geocodes of the hotel to plot a map if needed (or with Tableau)
# library("gdata")
# library("zipcode")
# library("ggplot2")
# library("openintro")
# library("ggmap")
# latlon1 <- geocode("Grand Hyatt New York, nyc, ny")
# latlon2 <- geocode("Hyatt Times Square, nyc, ny")
# latlon3 <- geocode("Hyatt Place New York/Midtown-South, nyc, ny")
# latlon4 <- geocode("Andaz 5th Avenue, nyc, ny")
# latlon5 <- geocode("Hyatt Union Square New York, nyc, ny")
# latlon6 <- geocode("Andaz Wall Street, nyc, ny")
# latlon7 <- geocode("Hyatt 48 Lex, nyc, ny")
# latlon8 <- geocode("Park Hyatt New York, nyc, ny")
# latlon9 <- geocode("Hyatt Herald Square, nyc, ny")
      # To create a dataframe with the results and the locations
# locationlon <- c(latlon1$lon, latlon2$lon, latlon3$lon, latlon4$lon, latlon5$lon, latlon6$lon, latlon7$lon, latlon8$lon, latlon9$lon)
# locationlat <- c(latlon1$lat, latlon2$lat, latlon3$lat, latlon4$lat, latlon5$lat, latlon6$lat, latlon7$lat, latlon8$lat, latlon9$lat)
# HotelsInfo <- data.frame(HotelName, Surveys, NPS, locationlon, locationlat) # Three of these variables were created earlier in the analysis
# View(HotelsInfo)
      # To save the new file
# write.csv(HotelsInfo, "~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/z-Final Project/HotelsInfo.csv")


      # To plot the results using a grouped barchart using the simpler qplot command.
      # This is an alternative to the ggplot2 regular command) --> qplot http://ggplot2.tidyverse.org/reference/qplot.html
# NPS type by Gender (descritpive stats section)
# w <- qplot(dataset$NPS_Type, data=dataset, geom="bar", fill=dataset$NPS_Type, facets =.~dataset$Gender_H)
# w <- w + xlab("Gender") + ylab("Number of customers") + labs(fill="NPS Type")
# w <- w + ggtitle("NYC Customers: NPS Type by Gender") + scale_fill_brewer() # or add palette = "Set1" in the last command (but I like keeping it BLUE!)
# w <- w + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) # to remove the grid and background
# w <- w + theme(axis.text.x = element_text(size=6, angle = 45, hjust = 1))
# w
########################################################################################################




