require ('minitest/autorun')
require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def setup
    @rock = "rock"
    @paper = "paper"
    @scissors = "scissors"
  end

  def test_run__paper_beats_rock
    game = Game.new(@paper, @rock)
    assert_equal("Player 1 wins with paper!", game.run)
  end

  def test_run__draw
    game = Game.new(@rock, @rock)
    assert_equal("It's a draw!", game.run)
  end

  def test_run__scissors_beaten_by_rock
    game = Game.new(@scissors, @rock)
    assert_equal("Player 2 wins with rock!", game.run)
  end
end
