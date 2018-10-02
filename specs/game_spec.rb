require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def test_rock_wins
    assert_equal("Player 1 wins with rock!", Game.run("rock", "scissors"))
  end

  def test_rock_wins_player_2
    assert_equal("Player 2 wins with rock!", Game.run("scissors", "rock"))
  end

  def test_paper_wins
    assert_equal("Player 1 wins with paper!", Game.run("paper", "rock"))
  end

  def test_paper_wins_player_2
    assert_equal("Player 2 wins with paper!", Game.run("rock", "paper"))
  end

  def test_scissors_wins
    assert_equal("Player 1 wins with scissors!", Game.run("scissors", "paper"))
  end

  def test_scissors_wins_player_2
    assert_equal("Player 2 wins with scissors!", Game.run("paper", "scissors"))
  end

  def test_draw
    assert_equal("It's a Draw!", Game.run("rock", "rock"))
  end

end
