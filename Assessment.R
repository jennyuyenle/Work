#Houston Dynamo vs. Montreal Impact - Wed., July 5, 2017	
#Import datasets: orders,customers,tickets
library(tidyr)
library(dplyr)


tickets %>%
group_by(Value) %>%
tally() %>%
arrange(desc(n))

mean(tickets$Value)

# Most tickets are sold for $24 each with an average of $34.27 hinting the data is skewed to the right or positively skewed.
hist(tickets$Value,main = "Histogram of Ticket Sales",xlab = "Ticket Value",col="red")

sum(tickets$Value)

#Ticket purchased for that game totals $43,2601.3.
summary(count(tickets,var=AccountNumber))

#People buy about 4 tickets on average.
tickets %>%
group_by(ZoneName) %>%
tally()

11513/12622
#Admission tickets were purchased the most at 91%. 

orders %>%
group_by(sales_rep_id) %>%
tally() %>%
arrange(desc(n))

summary(count(orders,var=sales_rep_id))

#Sales rep 434960 has the most sales at 212.

customers %>%
group_by(zip) %>%
tally() %>%
arrange(desc(n))

#Most accounts aren't linked to a zip code. This may affect the accurate count. Possibly try to get the account holders to update their information.
# I would also create a density map to visualize the number of tickets purchased from each zipcode area as well as the price
#and emphasize the location of the BBVA Stadium (77003) to see if there is a relation with distance. (had a little trouble creating the map)