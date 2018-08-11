
### my hypthesis is that teams are actually better in the stage when their invested prospects
### are not on big money contracts. For example, the Cubs won the World Series with their highest paid
### players being Jon Lester and Jason Heyward. Is there something to letting go of players once they demand 
### big money contracts, and instead keep two or three prospects coming into clubhouse every year?

### Test 1 ###
## Calculate WAS (Wins above Salary)



# R Script for
# CONNECTING TO DATABASE
library(RMySQL)
dbCredentialsFile <- read.csv("database_credentials.csv", stringsAsFactors = FALSE, header = TRUE)
con <- dbConnect(MySQL(),
                 user = dbCredentialsFile$user[1],
                 password = dbCredentialsFile$password[1],
                 host = dbCredentialsFile$host[1],
                 dbname = dbCredentialsFile$dbname[1])
rm(dbCredentialsFile)
gc()

summary(con)

dbGetInfo(con)
dbListResults(con)
dbListTables(con)
dbListFields(con, "batting")
