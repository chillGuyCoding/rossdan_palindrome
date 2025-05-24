# frozen_string_literal: true

require_relative "rossdan_palindrome/version"

# Simple module for practicing TDD Ruby tutorials
module RossdanPalindrome
  class Error < StandardError; end

  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    self.chars.select { |c| c.match?(/[a-z]/i) }.join
  end

  private

  def processed_content
    letters.downcase
  end
end

class String
  include RossdanPalindrome
end
