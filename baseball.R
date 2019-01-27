# import datasets
players = read.csv("data-files/Master.csv", stringsAsFactors = FALSE)
batting = read.csv("data-files/Batting.csv", stringsAsFactors = FALSE)

# quick peek, first five rows, first six columns
players[1:5, 1:6]

# quick peek, first five rows, first 10 columns
batting[1:5, 1:10]

# merge batting and two columns of players table into a new data frame
batting_extra = merge(batting, players[,c("playerID", "birthYear")])

# quick peek at new data frame
batting_extra[1:10, c("playerID", "yearID", "teamID", "G", "birthYear")]

# filter batting_extra players with > 200 at bats, post 1950

x = batting_extra[which(batting_extra$AB > 3 & batting_extra$yearID >= 1930),]

# calculate players' age

x$age = x$yearID - x$birthYear

hist(x$age)



