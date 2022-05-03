#!/usr/bin/ruby

require('pry')
require('rspec')
require('scrabble_score')

describe('#scrabble') do
  it('returns a scrabble score for a letter') do
    word1 = ScrabbleScore.new("a")
    expect(word1.scrabble()).to(eq(1))
  end
  it('recognizes the one point letters') do
    word1 = ScrabbleScore.new('n')
    expect(word1.scrabble()).to(eq(1))
  end
  it('recognizes the two point letters') do
    word1 = ScrabbleScore.new('d')
    expect(word1.scrabble()).to(eq(2))
  end
  it('recognizes the three point letters') do
    word1 = ScrabbleScore.new('b')
    expect(word1.scrabble()).to(eq(3))
  end
  it('recognizes the four point letters') do
    word1 = ScrabbleScore.new('f')
    expect(word1.scrabble()).to(eq(4))
  end
  it('recognizes the five point letters') do
    word1 = ScrabbleScore.new('k')
    expect(word1.scrabble()).to(eq(5))
  end
  it('recognizes the eight point letters') do
    word1 = ScrabbleScore.new('x')
    expect(word1.scrabble()).to(eq(8))
  end
  it('recognizes the ten point letters') do
    word1 = ScrabbleScore.new('z')
    expect(word1.scrabble()).to(eq(10))
  end
  it('recognizes multi letter inputs') do
    word1 = ScrabbleScore.new('an')
    expect(word1.scrabble()).to(eq(2))
  end
  it('recognizes multi letter inputs') do
    word1 = ScrabbleScore.new('AN')
    expect(word1.scrabble()).to(eq(2))
  end
end