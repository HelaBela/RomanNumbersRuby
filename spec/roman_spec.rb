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
  
  it "represents 5 as V" do
    expect( Number.to_roman(5) ).to eq "V"
  end
  
  it "represents 10 as X" do
    expect( Number.to_roman(10) ).to eq "X"
  end
  
  it "represents 50 as L" do
    expect( Number.to_roman(50) ).to eq "L"
  end
  
  it "represents 100 as C" do
    expect( Number.to_roman(100) ).to eq "C"
  end
end