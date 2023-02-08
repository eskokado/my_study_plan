require_relative '../../../app/problems/type/counting_string'

describe "Count string" do
  str = "#GeeKs01fOr@gEEks07"
  countingString = CountingString.new
  countingString.count(str)
  it "Ensure count char upper in string" do
    upper = countingString.countUpper
    expect(upper).to eq(5)
  end
end
