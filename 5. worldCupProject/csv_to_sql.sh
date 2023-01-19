#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do

# WINNERS
  if [[ $WINNER != winner ]]
  then
    # get winner name
    GET_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    
    #if doesnt exist rewrite
    if [[ -z $GET_WINNER ]]
    then
     echo "$WINNER"
     INSERT_NAME=$($PSQL "INSERT INTO teams(name) values('$WINNER')")
    fi
  fi

#OPPONENTS
  if [[ $OPPONENT != opponent ]]
  then
    # get winner name
    GET_OP=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    #if doesnt exist rewrite
    if [[ -z $GET_OP ]]
    then
     echo "$OPPONENT"
     INSERT_NAME=$($PSQL "INSERT INTO teams(name) values('$OPPONENT')")
    fi
  fi

  #GAMES
  if [[ $OPPONENT != opponent ]]
  then
    # get winner name
    OP=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    WI=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
   
     echo "$OPPONENT"
    INSERT_NAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals ) values($YEAR, '$ROUND', $WI, $OP, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi
done
