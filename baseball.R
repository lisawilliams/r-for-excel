# import datasets
players = read.csv("Master.csv", stringsAsFactors = FALSE)
batting = read.csv("data-files/Batting.csv", stringsAsFactors = FALSE)

# quick peek, first five rows, first six columns
players[1:5, 1:6]

#quick peek, first five rows, first 10 columns
batting[1:5, 1:10]

