require_relative '../../../app/problems/date/day_of_week'
describe "Day of Week" do
  it "returns 0 for Sunday" do
    expect(Problems::Date.date_of_week(2023, 2, 19)).to eq(0)
  end
end
