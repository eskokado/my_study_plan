require_relative '../../../lib/problems/date/day_of_week'
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

  it "returns 4 for Thursday" do
    expect(Problems::Date.day_of_week(2023, 2, 23)).to eq(4)
  end

  it "returns 5 for Friday" do
    expect(Problems::Date.day_of_week(2023, 2, 24)).to eq(5)
  end

    it "returns 6 for Saturday" do
      expect(Problems::Date.day_of_week(2023, 2, 25)).to eq(6)
    end
end
