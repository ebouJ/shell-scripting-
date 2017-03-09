#!/bin/bash

echo "Please guess a number between 1 and 50"
#checking if the data file is empty or not 
#if it's not empty then i generate random nums
 if [[ -s Data.pg ]]
      then  
             sumT=0
      else
        for ((i=0; i<10; i++))
           do
           echo $(( (RANDOM%50) +1 )) >> Data.pg
        done
  fi
    if [[ -s guesses.txt ]]
      then  
             sumT=0
      else
        for ((i=0; i<5; i++))
           do
           echo $(( (RANDOM%3) +1 )) >> guesses.txt
        done
  fi
sumForGuess=0
#finding the sum of guesses 
while read LINE
do
   sumForGuess=$(($LINE + $sumForGuess))
done < guesses.txt
averageForGueses=$(( $sumForGuess / 5 ))
sum=0
#finding the sum of data.pg
while read LINE
do
   sum=$(($LINE + $sum))
done < Data.pg
average=$(( $sum / 10))
rightans=$(($average * 2 /3))
guessCount=0;
counter=0
#while loop to check for correct ans
while [ $counter -lt 3 ]
   do
        i=$(($i+1))
     guessCount=$(($guessCount+1))
     read -a guess
    if [ $guess -eq $rightans ]
    then
      echo "Welldone.You took ${guessCount} tries to guess.Average tries is ${averageForGueses}"
     exit 0
      bool=false
    else
     lineNo=$(( (RANDOM%11) + 1 ))
#sed command to replace one random genrated random number
       sed -i "${lineNo}s/.*/${guess}/g"  Data.pg
     echo "Incorrect guess .Please try again"

    counter=$((counter+1))
  fi
  done
        lineNo=$(( (RANDOM%5) + 1 ))
        sed -i "${lineNo}s/.*/${counter}/g"  guesses.txt
        echo "Average tries is ${averageForGueses} so don't feel bad"

exit 0
  
