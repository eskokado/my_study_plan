require_relative '../../../../lib/MyGem/Problems/Arrays/positive_even_negative_odd.rb'

describe MyGem::Problems::Arrays::PositiveEvenNegativeOdd do
  describe ".positive_even_negative_odd" do
    it "rearranges the array correctly" do
      arr = [-3, 2, 5, -7, -8, 6]
      result = MyGem::Problems::Arrays::PositiveEvenNegativeOdd.handle(arr)
      expect(result).to eq([2, -3, 5, -7, 6, -8])
    end

  end
end
