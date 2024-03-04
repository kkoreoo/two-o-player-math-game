require './player.rb'
require './question.rb'

class Gameplay 

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def play

    while(@player1.lifepoints > 0 && @player2.lifepoints > 0) do
      # Generates new question
      question = Question.new

      # Displays the question to the for the current player
      puts "#{@current_player.name}: #{question.ask_question}"
      print "> "

      # Retrieves the player's guess
      guess = gets.chomp.to_i

      #Evaluates whether the guess is correct or not
      if question.correct_answer?(guess)
        puts "#{@current_player.name}: Yes! You are correct."
      else 
        # Current player loses a lifepoint because they were incorrect
        @current_player.lose_life
        puts "#{@current_player.name}: Seriously? No!"
      end

      puts "P1: #{@player1.lifepoints}/3 vs P2: #{@player2.lifepoints}/3"

      #Changes current player
      if @current_player == @player1
        @current_player = @player2
      else 
        @current_player = @player1
      end

      puts "----- NEW TURN -----"

    end

    game_over

  end

  # Ends the game when one of the players lifepoints reaches 0
  def game_over
    # Checks which player has no more lifepoints
    if @player1.lifepoints > 0
      puts "Player 1 wins with a score of #{@player1.lifepoints}/3"
    else
      puts "Player 2 wins with a score of #{@player2.lifepoints}/3"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end