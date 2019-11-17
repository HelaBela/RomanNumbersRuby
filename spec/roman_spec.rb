require "number"

RSpec.describe "Roman numerals" do
  [
    {arabic: 1, roman: "I"},
    {arabic: 2, roman: "II"},
    {arabic: 3, roman: "III"},
#     {arabic: 4, roman: "IV"},
    {arabic: 5, roman: "V"},
    {arabic: 6, roman: "VI"},
    {arabic: 10, roman: "X"},
    {arabic: 11, roman: "XI"},
#     {arabic: 12, roman: "XII"},
    {arabic: 50, roman: "L"},
    {arabic: 100, roman: "C"},
#     {arabic: 500, roman: "?"},
#     {arabic: 1000, roman: "M"},
  ].each do |values|
    it "represents arabic #{values[:arabic]} as roman #{values[:roman]}" do
        expect( Number.to_roman(values[:arabic]) ).to eq values[:roman]
    end
  end
end