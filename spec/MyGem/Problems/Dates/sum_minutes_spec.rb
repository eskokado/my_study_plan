require_relative '../../../../lib/MyGem/Problems/Dates/sum_minutes'
describe 'Sum Minute' do
  it "returns the correct time when adding minutes to 10:00" do
    expect(MyGem::Problems::Dates::SumMinutes.sum('10:00', 30)).to eq ('10:30')
    expect(MyGem::Problems::Dates::SumMinutes.sum('10:00', 120)).to eq ('12:00')
    expect(MyGem::Problems::Dates::SumMinutes.sum('10:00', 1440)).to eq ('10:00')
    expect(MyGem::Problems::Dates::SumMinutes.sum('10:00', 1500)).to eq ('11:00')
  end

end
