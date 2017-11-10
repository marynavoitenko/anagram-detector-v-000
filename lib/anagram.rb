require 'pry'
class Anagram
  attr_accessor :word
  # @@anagrams = []

  def initialize(word)
      @@anagrams = []
    @word = word
  end

  def match(possibleanagrams)
    possibleanagrams.each do |possibleanagram|
      possible_arr = possibleanagram.split("")
      word_arr = self.word.split("")
      if possible_arr.sort == word_arr.sort
        @@anagrams << possibleanagram
      end
    end
    @@anagrams
  end

end
