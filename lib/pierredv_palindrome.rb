require "pierredv_palindrome/version"

module PierredvPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include PierredvPalindrome
end

class Integer
  include PierredvPalindrome
end
