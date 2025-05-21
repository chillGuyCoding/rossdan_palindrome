# frozen_string_literal: true

require_relative "rossdan_palindrome/version"

module RossdanPalindrome
  class Error < StandardError; end
  # Your code goes here...
  
  def palindrome?
    processed_content == processed_content.reverse
  end

  private
    
    def processed_content
      self.downcase
    end
end

class String
  include RossdanPalindrome
end
