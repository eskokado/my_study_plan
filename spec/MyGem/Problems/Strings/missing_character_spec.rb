require_relative '../../../../lib/MyGem/Problems/Strings/missing_character'

describe "Missing Characters" do
  it "should call missing characters 'The quick brown fox jumps over the dog' result 'alyz'" do
    str = "The quick brown fox jumps over the dog"
    result = MyGem::Problems::Strings::GFG.missing_chars(str)

    expect(result).to eq("alyz")
  end
  it "should call missing characters 'welcome to geeksforgeeks' result 'abdhijnpquvxyz'" do
    str = "welcome to geeksforgeeks"
    result = MyGem::Problems::Strings::GFG.missing_chars(str)

    expect(result).to eq("abdhijnpquvxyz")
  end
  it "should call missing characters 'The quick brown fox jumps' result 'adglvyz'" do
    str = "The quick brown fox jumps"
    result = MyGem::Problems::Strings::GFG.missing_chars(str)

    expect(result).to eq("adglvyz")
  end
end
