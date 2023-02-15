require_relative '../../../app/problems/string/common_characters'
describe "Common Characters" do
  it 'returns the common characters in two strings' do
    array = ['banana', 'caneta']
    result = Problems::String.common_characters(array)
    expect(result).to eq(['a', 'n'])
  end

  it 'returns common characters in three strings' do
    array = ['banana', 'caneta', 'dança']
    result = Problems::String.common_characters(array)
    expect(result).to eq(['a', 'n'])
  end
end
