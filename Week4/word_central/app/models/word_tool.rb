class WordTool < ApplicationRecord
  def self.count_words(words)
    frequencies = Hash.new(0)

    words.each { |word|
      frequencies[word] += 1
    }

    frequencies.sort_by {|word, count|
      count
    }.reverse[0..10]
  end
end