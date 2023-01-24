require './player'

class Question

  attr_accessor :number1, :number2, :answer

  def initialize()
    @number1 = rand(11)
    @number2 = rand(11)
    @answer = @number1 + @number2
  end

  def call_question(current_player)
    puts "#{current_player.name}, What does #{@number1} + #{@number2} equal?"
  end

  def correct_answer(answer)
    @answer === answer.to_i
  end

end