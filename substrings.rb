# frozen_string_literal: true

def substrings(string, dictionary)
  result = Hash.new(0)
  words = string.downcase.scan(/\w+/)

  dictionary.each do |dict_word|
    dict_word.downcase!
    words.each do |word|
      result[dict_word] += 1 if word.include?(dict_word)
    end
  end

  result
end

puts substrings('below', %w[below low bow el])
puts substrings("Howdy partner, sit down! How's it going?", %w[down how it go])
