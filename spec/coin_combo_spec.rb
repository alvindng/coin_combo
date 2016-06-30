require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it "return how many pennies are needed for inputted dollar amount" do
    expect(0.04.coin_combo(5,5,5)).to(eq([4, 0, 0, 0]))
  end
  it "return how many pennies and nickels are needed for inputted dollar amount" do
    expect(0.06.coin_combo(5,5,5)).to(eq([1, 1, 0, 0]))
  end
  it "return how many pennies and nickels and dimes are needed for inputted dollar amount" do
    expect(0.16.coin_combo(5,5,5)).to(eq([1, 1, 1, 0]))
  end
  it "return how many pennies and nickels and dimes and quarters are needed for inputted dollar amount" do
    expect(0.91.coin_combo(5,5,5)).to(eq([1, 1, 1, 3]))
  end
end
