require_relative '../../../../lib/MyGem/Problems/Dates/day_of_week'
describe "Day of Week" do

  it "returns 0 for Sunday" do
    expect(MyGem::Problems::Dates::DayOfWeek.display(2023, 2, 19)).to eq(0)
  end

end
