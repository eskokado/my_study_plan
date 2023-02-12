require_relative '../../../app/problems/string/counting_string'

describe "Count string" do
  str = "#GeeKs01fOr@gEEks07"
  countingString = CountingString.new
  countingString.count(str)
  it "Ensure count char upper in string" do
    upper = countingString.countUpper
    expect(upper).to eq(5)
  end
  it "Ensure count char lower in string" do
    lower = countingString.countLower
    expect(lower).to eq(8)
  end
  it "Ensure count number in string" do
    number = countingString.countNumber
    expect(number).to eq(4)
  end
  it "Ensure count character special in string" do
    special = countingString.countSpecial
    expect(special).to eq(2)
  end
end
