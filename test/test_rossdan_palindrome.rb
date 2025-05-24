# frozen_string_literal: true

require "test_helper"

class TestRossdanPalindrome < Minitest::Test
  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaCeCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_alpha_numeric
    assert_equal "MadamImAdam", "Madam, I'm Adam.".alpha_numeric
  end
end
