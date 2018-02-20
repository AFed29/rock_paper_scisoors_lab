require ('minitest/autorun')
require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def setup
    @rock = "rock"
    @paper = "paper"
    @scissors = "scissors"
  end

  def test_run__paper_beats_rock
    game = Game.new(@rock, @paper)
    assert_equal("paper wins!", game.run)
  end

  def test_run__draw
    game = Game.new(@rock, @rock)
    assert_equal("it's a draw!", game.run)
  end

  def test_run__scissors_beaten_by_rock
    game = Game.new(@scissors, @rock)
    assert_equal("rock wins!", game.run)
  end
end
