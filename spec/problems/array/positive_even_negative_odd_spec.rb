require_relative '../../../app/problems/array/positive_even_negative_odd.rb'

describe Problems::Arrays do
  describe ".positive_even_negative_odd" do
    it "rearranges the array correctly" do
      arr = [-3, 2, 5, -7, -8, 6]
      result = Problems::Arrays.positive_even_negative_odd(arr)
      expect(result).to eq([2, -3, 5, -7, 6, -8])
    end
  end
end
