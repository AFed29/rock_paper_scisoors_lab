class Game
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def run()

    # hash = {
    #   "rock" => "scissors",
    #   "scissors" => "paper",
    #   "paper" => "rock"
    # }
    #
    # if( hash[@hand1] == @hand2 )
    #   return "Player 1 wins with " + @hand1
    # elsif( hash[@hand2] == @hand1 )
    #   return "Player 2 wins with " + @hand2
    # else
    #   return "Draw"
    # end


    case
    when @hand1 == @hand2
      return "It's a draw!"
    when (
      (@hand1 == "paper" && @hand2 == "rock") ||
      (@hand1 == "rock" && @hand2 == "scissors") ||
      (@hand1 == "scissors" && @hand2 == "paper")
    )
    return "Player 1 wins with #{@hand1}!"
  else
    return "Player 2 wins with #{@hand2}!"
  end
end

end
