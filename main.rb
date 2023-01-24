require './game.rb'
require './question'
require './player'


game = Game.new
question = Question.new
@player1 = Player.new("Player 1")
@player2 = Player.new("Player 2")


until (@player1.lives == 0 || @player2.lives == 0) do
  if game.turn % 2 == 0
    current_player = @player2
  else
    current_player = @player1
  end
  current_player.ask_question(current_player)
  puts "Remaining Lives: #{current_player.lives}"
  game.turn += 1
end