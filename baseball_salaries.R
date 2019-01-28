#import the salaries.csv file and name it "salaries" 
salaries = read.csv("data-files/Salaries.csv")

#import the teams.csv file and call it "teams" 
teams = read.csv("data-files/Teams.csv")

# validate the datafiles by taking a quick peek at columns and rows
teams[1:5, 1:6]
salaries[1:2, 1:2]

# show the header row of each dataset

head(salaries)
head(teams)