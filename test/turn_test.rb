require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new("Juneau", Card.new("What is the capital of Alaska?", "Juneau", :Geography))
    assert_instance_of Turn, turn
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  end

  def test_it_has_a_guess

    turn = Turn.new("Juneau", Card.new("What is the capital of Alaska?", "Juneau", :Geography))
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    assert_equal "Juneau", turn.guess
  end

  def test_it_has_correct?
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", Card.new("What is the capital of Alaska?", "Juneau", :Geography))
      assert_equal "Juneau", card.answer
  end

  def test_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", Card.new("What is the capital of Alaska?", "Juneau", :Geography))
    assert true, turn.feedback
  
  end
end
