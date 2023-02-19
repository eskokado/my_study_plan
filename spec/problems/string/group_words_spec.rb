require_relative '../../../lib/problems/string/group_words'
describe "Group Words" do
  it "groups words with same letter" do
    words = %w[ate eat tea tan nat bat]
    result = Problems::String.group_words(words)
    expect(result).to match_array([%w[ate eat tea], %w[tan nat], %w[bat]])
  end

  it "handles empty input" do
    expect(Problems::String.group_words([])).to eq([])
  end

  it "handles input with single word" do
    expect(Problems::String.group_words(%w[hello])).to eq([%w[hello]])
  end
end
