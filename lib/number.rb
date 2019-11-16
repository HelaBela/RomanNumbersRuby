class Number
  ROMAN_VALUES = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C"
  }

  def self.to_roman(decimal_number)
    last_closest_number = 0
    reminder = nil

    for key, given_number in ROMAN_VALUES
        if key < decimal_number
            last_closest_number = key
        end
    end

    reminder = decimal_number-last_closest_number 
  
    if ROMAN_VALUES.key?(decimal_number)
        return ROMAN_VALUES[decimal_number]
    end
    roman_number=[]
   
    if decimal_number<4
    decimal_number.times {
      roman_number.push ROMAN_VALUES[1]
    }
    elsif decimal_number>3
    
    roman_number.push ROMAN_VALUES[last_closest_number]
    roman_number.push ROMAN_VALUES[reminder]
    
    end
    roman_number.join
  end
end
