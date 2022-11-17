def caesar_cipher(text, shift)
  shifted_text = ""
  shift = adjust_shift(shift)

  text.each_char do |c| 
    if(c.ord.between?(65, 90))
      c = contain_number(65, 90, c.ord + shift).chr
    end
    if(c.ord.between?(97, 122))
      c = contain_number(97, 122, c.ord + shift).chr
    end

    shifted_text += c
  end

  return shifted_text
end

def contain_number(lower, upper, current)
  if(current > upper)
    current -= 1
    current = lower + (current - upper)
  end
  if(current < lower)
    current += 1
    current = upper - (lower - current)
  end

  return current
end

def adjust_shift(shift)
  if(shift < 0) 
     return (shift.abs % 26) * -1 
  end
  
  return shift % 26
end


puts caesar_cipher("What a string!", -87)