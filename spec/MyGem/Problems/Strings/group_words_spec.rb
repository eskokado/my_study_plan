require_relative '../../../../lib/MyGem/Problems/Strings/group_words'
describe "Group Words" do
  it "groups words with same letter" do
    words = %w[ate eat tea tan nat bat]
    result = MyGem::Problems::String::GroupWords.find(words)
    expect(result).to match_array([%w[ate eat tea], %w[tan nat], %w[bat]])
  end

end
