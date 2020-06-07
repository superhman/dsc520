# Assignment: ASSIGNMENT 1.1
# Name:Mangat,Harsimar
# Date: 2020-06-06





#1.What are the observational units in the study?
#1.Answer:Each row is the grade/total points per the respective section (sports/regular)
scores_df <- read.csv("scores.csv")
head(scores_df)


#2.Identify the variables mentioned in the narrative paragraph and determine which ones are categorical & quantitive?"
#2.Answer: Using str(score_df), we have three variables, Count (which is int or quantitative), Score (INT/Quantitative)
# and Section (CHR/Categorical)
str(scores_df)

#3. Create one variable to hold a subset of your data set that contains only 
#the Regular Section and one variable for the Sports Section.
scores_reg <-scores_df[scores_df$Section == "Regular",]
scores_sport <-scores_df[scores_df$Section == "Sports",]
reg_mean<-colMeans(scores_reg['Score'])
sport_mean<-colMeans(scores_sport['Score'])
reg_median<-median(scores_reg[,'Score'])
sport_median<-median(scores_sport[,'Score'])
sum_sport<-sum(scores_sport['Score'] > 300)
sum_reg<-sum(scores_reg['Score'] > 300)


#4.Use the Plot function to plot each Sections scores and the number of students achieving that score. 
#Use additional Plot Arguments to label the graph and give each axis an appropriate label. 
#Once you have produced your Plots answer the following questions:

plot(scores_reg[,'Score'],main=" Regular vs Sport Section Scores",col="red",xlab = "# of Students",ylab="Scores",xlim=c(0,25),ylim=c(200,400))
par(new=TRUE)

plot(scores_sport[,'Score'],col="blue",xlab = "# of Students",ylab="Scores",xlim=c(0,25),ylim=c(200,400))
legend(x=20,y=300,legend=c('Regular','Sport'),col=c('red','blue'),pch=c(8,16))

#a.Comparing and contrasting the point distributions between the two section, 
#looking at both tendency and consistency: Can you say that one section tended to 
#score more points than the other? Justify and explain your answer.
reg_mean
sport_mean
sum_sport
sum_reg
reg_median
sport_median
regsum=summary(scores_reg['Score'])
sportsum=summary(scores_reg['Score'])
#a.Answer: The regular session had a higher minimum score and higher 1st and 3rd quartile. 
#In addition, the regular session had a higher Median & Average - therefore indicating a stronger central tendency than the sports section

#b.Did every student in one section score more points than every student in the other section? 
#If not, explain what a statistical tendency means in this context.
#b.Answer: If we look at the median and mean, then we will see that the regular section performed generally higher than the sports section

#c.What could be one additional variable that was not mentioned in the narrative that 
#could be influencing the point distributions between the two sections?
#c.Answer: Although not a quantitative variable, there could be a chance that not every student enjoys sports, whereas the regular session
#had data-sets across a spectrum, therefore allowing students to be experience various data-sets across multiple categories.
# This could have an effect. 