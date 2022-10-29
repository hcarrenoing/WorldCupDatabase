#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
  echo $($PSQL "TRUNCATE teams, games")
fi # fin de ciclo 

# Do not change code above this line. Use the PSQL variable above to query your database.
  #cat games.csv |cut -f4 -d, | sort | uniq | while read TEAM
  { cat games.csv | cut -f3 -d, | sort | uniq; cat games.csv | cut -f4 -d, | sort | uniq; } | sort | uniq | while read TEAM

  do
  
    # get major_id
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$TEAM'")

    # if not found
    if [[ -z $TEAM_ID ]]
     then
      # insert TEAMS
      if [[ $TEAM != 'winner' && $TEAM != 'opponent' ]]
       then
        INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$TEAM')")
        if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
          then
            echo Inserted into teams, $TEAM
        fi
      fi
   fi

  done


  cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
  do
    if [[ $TEAM != 'winner' && $TEAM != 'opponent' ]]
       then

        TEAM_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        
        TEAM_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        
          if [[ $TEAM_OPPONENT_ID != '' && $TEAM_WINNER_ID != '' ]]
          then
            INSERTWINNERRESULT=$($PSQL "Insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($YEAR, '$ROUND', $TEAM_WINNER_ID, $TEAM_OPPONENT_ID, $WINNERGOALS, $OPPONENTGOALS)")
          fi
    fi
  done