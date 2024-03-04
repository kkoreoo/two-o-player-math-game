# two-o-player-math-game

### Planning
* Create a 2-Player math game where players take turns to answer simple math addition problems. 
* A new math question is generated for each turn by picking two numbers between 1 and 20. 
* The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Nouns
* Players Class -> Form 2 players from this class
 * Methods: 
 * 
* Questions class -> Create questions from this a general format
 * Methods: Will store answers to each question 
 * Will take user I/O -> if user input matches answer -> return correct output

 * Will pass this info to Lifepoints (will only receieve input when incorrect answers are submitted) 
 * and turntracker (receives both correct/incorrect inputs to swap turn no matter what)
 
* Lifepoints - Keeps data about the number of lives remaining for each player
* Turn tracker - keeps track of who's turn it is 
  * Will manage current_player