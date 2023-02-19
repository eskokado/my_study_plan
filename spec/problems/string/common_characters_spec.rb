require_relative '../../../lib/problems/string/common_characters'
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

  it 'returns common characters in two strings' do
    array = ['banana', 'macaco']
    result = Problems::String.common_characters(array)
    expect(result).to eq(['a'])
  end

  it 'returns an empty list if there are no common characters in three string' do
    array = ['banana', 'macaco', 'pneu']
    result = Problems::String.common_characters(array)
    expect(result).to eq([])
  end
end
