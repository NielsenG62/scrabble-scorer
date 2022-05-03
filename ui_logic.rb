#!/usr/bin/ruby

require_relative ('lib/scrabble_score.rb')
string = gets.chomp
word1 = ScrabbleScore.new(string)
puts word1.scrabble()