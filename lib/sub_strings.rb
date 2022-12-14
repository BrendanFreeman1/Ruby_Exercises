# frozen_string_literal: true

# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

def sub_strings(string, dictionary)
  result = Hash.new(0)

  dictionary.each do |word|
    result[word] += 1 if string.downcase.include?(word)
  end

  result.sort
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)
