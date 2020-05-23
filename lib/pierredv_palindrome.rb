require "pierredv_palindrome/version"

module PierredvPalindrome
  def palindrome?
    if processed_content.empty?
      return false
    else
      processed_content == processed_content.reverse
    end
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
