require_relative '../../../../lib/MyGem/Problems/Strings/counting_string'

describe MyGem::Problems::Strings::CountingString do
  describe ".count" do
    context "when given an empty string" do
      it "returns zero for all counts" do
        counting_string = MyGem::Problems::Strings::CountingString.new
        counting_string.count("")
        expect(counting_string.countUpper).to eq(0)
        expect(counting_string.countLower).to eq(0)
        expect(counting_string.countNumber).to eq(0)
        expect(counting_string.countSpecial).to eq(0)
      end
    end

    context "when given a string with only uppercase letters" do
      it "returns the correct count for uppercase letters" do
        counting_string = MyGem::Problems::Strings::CountingString.new
        counting_string.count("ABCDEF")
        expect(counting_string.countUpper).to eq(6)
        expect(counting_string.countLower).to eq(0)
        expect(counting_string.countNumber).to eq(0)
        expect(counting_string.countSpecial).to eq(0)
      end
    end

  end
end
