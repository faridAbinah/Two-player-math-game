# Player class that has instance variables of  name, score(players wins and losses)

#player class -> instance variables: @lives, @name, @score 

# question class -> instance varibales: @question, @answer(refer to the actual answer of the question)
# methods: check(see if answer is correct)

#game class -> methods: newTurn, gameOver, response(correct or incorrect)
#class -> initiate both players, and game.  loop that ends only when game is over. 
# methods: askQuestion()
# 1.Inside the loop is where we will be asking questions,
# 2.prompt user for answer, checking to see if answer is correct, 
# 3.display response(correct or incorrect), 
# 4.display newTurn message

require 'pp'
require './Game'
require './Player'
require './Question-class'

# player1 = Player.new("Farid");
# player2 = Player.new("John");

game1 = Game.new

game1.start

