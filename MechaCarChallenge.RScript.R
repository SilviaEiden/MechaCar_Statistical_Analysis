#Deliverable 1
#Use the library() function to load the dplyr package.
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file= 'MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =MechaCar_mpg)
Mecha_lm

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(Mecha_lm)

#Deliverable 2
#Import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe.
#Using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

#Write an RScript that creates a lot_summary dataframe.
#Using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary

#Deliverable 3
#write an RScript using the t.test() function.
#To determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI, mu=1500)

#Using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
#Lot 1
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot1')$PSI, mu=1500)

#Lot 2
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot2')$PSI, mu=1500)

#Lot 3
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot3')$PSI, mu=1500)

#End of Deliverable 1, 2 and 3.








