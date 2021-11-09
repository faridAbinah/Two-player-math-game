require './Question-class'
require './Player'

class Game 
  attr_reader :rounds, :active_player
  def initialize
    @active_player = nil
    @rounds = 0
    @players = []
   

  end

  
  def newTurn
    print "-------NEW TURN -------"
  end

  def gameOver 
    "-------Game Over -------"
    switch_player
    puts "#{@active_player.name} wins the game with #{@active_player.lives}/3 \n Goodbye!"
  end
  
  

  def update_rounds 
    @rounds += 1
  end

  def askQuestion(player_name)

    
    question1 = Question.new
      update_rounds
      switch_player
    puts "#{active_player.name} #{question1.question}"

    @userAnswer = gets.chomp()
    
    if question1.check?(@userAnswer)
      puts "#{@active_player.name}:  YES! You are correct"
      puts "P1: #{@players[0].lives}/3  P2: #{@players[1].lives}/3"
      puts newTurn
    else
      puts "#{@active_player.name} Seriously! No!"
      @active_player.update_lives
      puts "P1: #{@players[0].lives}/3  P2: #{@players[1].lives}/3"
    end

  end

  def start
    print ">Start of a new game\n"

    player1 = Player.new("Farid");
    @players << player1
    player2 = Player.new("John");
    @players << player2
    @active_player = @players[1]

    while @active_player.lives > 0
      askQuestion(@active_player)
    end

    gameOver
  end

  def switch_player 
    if @active_player == @players[0]
      @active_player = @players[1]
    else 
      @active_player = @players[0]
    end
  end
    
  
end

