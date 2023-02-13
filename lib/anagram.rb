# Your code goes here!
class Anagram
    def initialize(word)
      @word = word.downcase
    end
    
    def match(possible_anagrams)
      possible_anagrams.select { |possible_anagram| anagram?(possible_anagram) }
    end
    
    private
    
    def anagram?(possible_anagram)
      possible_anagram = possible_anagram.downcase
      return false if possible_anagram == @word
      
      possible_anagram.chars.sort == @word.chars.sort
    end
end
  
