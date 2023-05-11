class Game
  attr_accessor :turn, :player1, :player2

  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end 

  def womp_womp
   
    puts "WOMP WOMP - GAME OVER"
    exit(0)
  end

  def change_lives(turn)
    if turn == 1
      @player1 -= 1
    else 
      @player2 -= 1
    end
    if @player1 == 0 || @player2 == 0
      womp_womp
    end
  end

  def change_turn(turn)
    if turn == 1
      @turn = 2
    else
      @turn = 1
    end
    start
  end

  def start
   
    question = Question.new(turn)
    if !question.start
      change_lives(turn)
    end
    change_turn(turn)
  end
  
end