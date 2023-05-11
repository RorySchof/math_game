class Question
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
  end

  def start
    num1 = rand(1..10)
    num2 = rand(1..10)

    puts "NEXT QUESTION"
    puts "Player #{turn}: What is #{num1} + #{num2}?"

    # takes input and gets interger
    answer = $stdin.gets.chomp.to_i

    if answer == num1 + num2
      puts "YOU GOT IT RIGHT!"
      return true
    else 
      puts "BOOO - WRONG ANSWER!"
      return false
    end
  end

end