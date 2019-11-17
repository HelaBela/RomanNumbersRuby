class Number
  ROMAN_VALUES = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C"
  }

#       require "pry"; binding.pry
  def self.to_roman(decimal_number)
    roman_number=[]
    remainder = decimal_number
    while remainder > 0 do
      current_decimal_number = closest_number(remainder)
      roman_number.push ROMAN_VALUES[current_decimal_number]
      remainder = remainder - current_decimal_number
    end
    roman_number.join
  end
  
  def self.closest_number(decimal_number)
    ROMAN_VALUES.keys.reverse.find{|value| value <= decimal_number} || 1
  end
end
