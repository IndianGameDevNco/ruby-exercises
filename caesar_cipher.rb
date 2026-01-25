# frozen_string_literal: true

def caesar_cipher(string, key)
  alphabet = ('a'..'z').to_a
  string.chars.map do |char|
    next char unless alphabet.include?(char.downcase)

    temp = alphabet[(alphabet.index(char.downcase) + key) % 26]
    char == char.upcase ? temp.upcase : temp
  end.join
end

p caeser_cipher gets, gets.to_i
