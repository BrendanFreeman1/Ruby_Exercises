dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, dictionary)
  result = Hash.new(0)
  input_words = string.downcase.split(" ")

  input_words.each do |w| 
    w = w.gsub(/[^A-Za-z]/,'')

    dictionary.each do |word| 
      if(word == w)
        result[word] += 1
      end
    end
  end

return result.sort

end

puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)