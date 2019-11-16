class Number

  def self.to_roman(decimal_number)
    roman_number=[]
    decimal_number.times {
      roman_number.push "I"
    }
    roman_number.join
  end
end
