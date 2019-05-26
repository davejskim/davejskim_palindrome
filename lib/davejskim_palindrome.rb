require "davejskim_palindrome/version"

module DavejskimPalindrome
  def palindrome?
    processed_content == processed_content.reverse    
  end
  
  private
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include DavejskimPalindrome
end

class Integer
  include DavejskimPalindrome
end

  
  # def letters
  #   the_letters=[]
  #   letter_regex = /[a-z]/i
  #   self.chars.each do |character|
  #     if character.match(letter_regex)
  #       the_letters << character
  #     end
  #   end
  #   the_letters.join
  # end
  
  # def letters
  #   self.chars.select { |c| c.match(/[a-z]/i) }.join
  # end

  # private
  #   def processed_content
  #     self.letters.downcase
  #   end



