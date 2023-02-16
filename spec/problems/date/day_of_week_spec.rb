require_relative '../../../app/problems/date/day_of_week'
describe "Day of Week" do
  it "returns 0 for Sunday" do
    expect(Problems::Date.day_of_week(2023, 2, 19)).to eq(0)
  end

  it "returns 1 for Monday" do
    expect(Problems::Date.day_of_week(2023, 2, 20)).to eq(1)
  end

  it "returns 2 for Tuesday" do
    expect(Problems::Date.day_of_week(2023, 2, 21)).to eq(2)
  end

  it "returns 3 for Wednesday" do
    expect(Problems::Date.day_of_week(2023, 2, 22)).to eq(3)
  end

end
