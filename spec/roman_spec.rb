require "number"

RSpec.describe "Roman numerals" do
  it "represents 1 as I" do
    expect( Number.to_roman(1) ).to eq "I"
  end

  it "represents 2 as II" do
    expect( Number.to_roman(2) ).to eq "II"
  end

  it "represents 3 as III" do
    expect( Number.to_roman(3) ).to eq "III"
  end
end