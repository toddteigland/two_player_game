require './question.rb'
require './game.rb'

class Player
  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def ask_question(current_player)
    question = Question.new()
    question.call_question(current_player)
    answer = gets.chomp
    if !question.correct_answer(answer)
      @lives -= 1
      puts "Incorrect, you lose a life!"
    else
      puts "Correct, Well done!"
    end
    if current_player.lives == 0
      puts "Sorry #{current_player.name}, you LOSE!"
      puts " ------   GAME OVER ------"
      puts " Good bye!  "
    end

  end

end