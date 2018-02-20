class Game
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def run()
    case
    when @hand1 == @hand2
      return "it's a draw!"
    when (
          (@hand1 == "paper" && @hand2 == "rock") ||
          (@hand1 == "rock" && @hand2 == "scissors") ||
          (@hand1 == "scissors" && @hand2 == "paper")
        )
      return "#{@hand1} wins!"
    else
      return "#{@hand2} wins!"
    end
  end

end
