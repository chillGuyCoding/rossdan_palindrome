# frozen_string_literal: true

require "test_helper"

class TestRossdanPalindrome < Minitest::Test
  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_palindrome
    assert "racecar".palindrome?
  end
end
