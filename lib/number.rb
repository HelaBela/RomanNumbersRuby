class Number
  ROMAN_VALUES = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C"
  }

#     require "pry"
#     binding.pry
  def self.to_roman(decimal_number)
    roman_number=[]

    last_closest_number = closest_number(decimal_number)
    reminder = nil

    reminder = decimal_number - last_closest_number 
  
    if ROMAN_VALUES.key?(decimal_number)
        return ROMAN_VALUES[decimal_number]
    end
    
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
  
  def self.closest_number(decimal_number)
    ROMAN_VALUES.keys.reverse.find{|value| value < decimal_number} || 0
  end
end
