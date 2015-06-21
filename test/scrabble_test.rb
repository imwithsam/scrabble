gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal (1 + 1), Scrabble.new.score("at")
    assert_equal (1 + 4), Scrabble.new.score("of")
  end

  def test_it_can_score_three_letters
    assert_equal (1 + 4 + 1), Scrabble.new.score("the")
    assert_equal (10 + 1 + 3), Scrabble.new.score("zap")
  end

  def test_it_returns_zero_if_any_non_letters_in_word
    assert_equal 0, Scrabble.new.score("1")
    assert_equal 0, Scrabble.new.score("!")
    assert_equal 0, Scrabble.new.score(" ")
    assert_equal 0, Scrabble.new.score("")
    assert_equal 0, Scrabble.new.score(nil)
  end
end
