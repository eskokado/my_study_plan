require_relative '../../../app/problems/type/missing_character'

describe "Missing Characters" do
  it "should call missing characters 'The quick brown fox jumps over the dog' result 'alyz'" do
    str = "The quick brown fox jumps over the dog"
    gfg = GFG.new
    result = gfg.missing_chars(str)

    expect(result).to eq("alyz")
  end
end
