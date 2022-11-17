dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, dictionary)
  result = Hash.new(0)
  string = string.downcase

  dictionary.each do |word| 
    if(string.include?(word))
      result[word] += 1
    end
  end

return result.sort
end

puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)
