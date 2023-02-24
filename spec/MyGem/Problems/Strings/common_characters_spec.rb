require_relative '../../../../lib/MyGem/Problems/Strings/common_characters'
describe "Common Characters" do
  it 'returns the common characters in two strings' do
    array = ['banana', 'caneta']
    result = MyGem::Problems::String::CommomCharacters.find(array)
    expect(result).to eq(['a', 'n'])
  end

  it 'returns common characters in three strings' do
    array = ['banana', 'caneta', 'dança']
    result = MyGem::Problems::String::CommomCharacters.find(array)
    expect(result).to eq(['a', 'n'])
  end

end
