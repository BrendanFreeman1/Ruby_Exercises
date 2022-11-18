#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.
#A caesar cipher is a type of substitution cipher in which each letter in the plaintext is replaced by a 
#letter some fixed number of positions down the alphabet.

def caesar_cipher(text, shift)
  shifted_text = ""
  shift = adjust_shift(shift)

  text.each_char do |c| 
    if(c.ord.between?(65, 90)) #Uppercase letters
      c = contain_number(65, 90, c.ord + shift).chr
    end
    if(c.ord.between?(97, 122))#lowercase letters
      c = contain_number(97, 122, c.ord + shift).chr
    end

    shifted_text += c
  end

  return shifted_text
end

#If shifting the current letter would put it past 'z' or 'a'
#wrap it around to the start or end of the alphabet respectivly
def contain_number(lower, upper, current)
  if(current > upper) #Past 'z'
    current -= 1 #Adjust so we wrap to 'a' and not 'b'
    current = lower + (current - upper)
  end
  if(current < lower) #Past 'a'
    current += 1 #Adjust so we wrap to 'z' and not 'y'
    current = upper - (lower - current)
  end

  return current
end

#If the absolute of shift is greater than 26, 
#We can modulo by 26 and use the resulting 
#remainder as our shift factor
def adjust_shift(shift)
  if(shift < 0) 
     return (shift.abs % 26) * -1 
  end
  
  return shift % 26
end


puts caesar_cipher("What a string!", -87)