class Number
  ROMAN_VALUES = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C"
  }
  def self.to_roman(decimal_number)
    return ROMAN_VALUES[decimal_number] if ROMAN_VALUES.key?(decimal_number)
    roman_number=[]
    decimal_number.times {
      roman_number.push "I"
    }
    roman_number.join
  end
end
