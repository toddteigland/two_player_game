require './player.rb'
require './question.rb'

class Game

  attr_accessor :turn, :is_over

  def initialize() 
    @turn = 1
    @is_over = false
  end
  if @is_over == true
    puts "Would you like to play again?"
  end
end