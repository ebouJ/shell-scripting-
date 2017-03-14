# shell-scripting-
There is a game where you have to guess what two thirds of the average of all guesses will be.
It works like this: 10 people guess a random number between 1 to 50. This data is stored in a file
as the initial data available to begin playing. Now a user runs the script and is prompted for input
where he enters a number. If the number is within +/-10% of the 2/3rds of the average of input
data in the file, the player wins. The user can guess up to 3 times before the script terminates
and prints the number of guesses the user took to guess the right number and how the user
compares to other players.
        A) As you do not have initial data, write a function to generate this data through the use of a
          random number generator. This function should only run the first time when the game
           has not been played by any player so far.
        B) After each guess, the data should be updated to include this guess in the data file and
          replace one of the random numbers you generated. (Each guess will replace one random
           generated number).   
        C) Keep track of the average number of tries a player took for the correct guess for 5 last
          players. Again you could start with a random number but after each play, this data should
          be updated to reflect the last play. [Ex: 5 players took tries: 2,1,3,2,2. So average is 2].
          You should print this message when user is done with his tries or has correctly guessed
          the right number.
        D) Since the user shouldn’t be able to read the input data of other users, you must encrypt it
           in any manner you desire but it should be readable by your script. (Hint: Use the
             algorithm in Q1 to shift/add to numbers) 
             
   Expected Format:
Game script : playgame.sh
Game script file: Data.pg (Should be at the same directory as playgame.sh)
Sample Run:
1.) User runs script. [./playgame.sh ]
2.) User is prompted for guess [Guess Number?]
3.) User enters number [10]
4.) If number is not within 10%, he is prompted again [Incorrect guess. Try again.]
5.) User enters number [20]
6.) User is shown message for a correct guess [Well Done. You took 2 tries to
guess. Average tries is 2].
