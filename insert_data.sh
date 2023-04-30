#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_G OPPONENT_G
do
  TEAMS=$($PSOL "SELECT name FROM teams WHERE name= '$wINNER'")
  if [[ $WINNER != "winner" ]]
  then
    if [[ -z $TEAM ]]
    then
    INSERT_TEAM=$($SPSQL "INSERT INTO teams (name) VALUES('$WINNER')")
    if [[ INSERT_TEAM ==  "INSERT 0 1" ]]
    then
    echo inserted into teams, $winner
    fi
   fi
  fi

done
