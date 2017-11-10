require 'pry'
class Anagram
  attr_accessor :word
  @@anagrams = []

  def initialize(word)
    @word = word
  end

  def match(possibleanagrams)
    possibleanagrams.each do |possibleanagram|
      possible_arr = possibleanagram.split("")
      word_arr = self.word.split("")
      if possible_arr <=> word_arr
        @@anagrams << self.word

      end

    end

    @@anagrams
  end

end
