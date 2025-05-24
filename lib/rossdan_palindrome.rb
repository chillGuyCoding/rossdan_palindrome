# frozen_string_literal: true

require_relative "rossdan_palindrome/version"

# Simple module for practicing TDD Ruby tutorials
module RossdanPalindrome
  class Error < StandardError; end

  def palindrome?
    processed_content == processed_content.reverse
  end

  def alpha_numeric
    to_s.scan(/[a-z]*\d*/i).join
  end

  private

  def processed_content
    alpha_numeric.downcase
  end
end

class String
  include RossdanPalindrome
end

class Integer
  include RossdanPalindrome
end
