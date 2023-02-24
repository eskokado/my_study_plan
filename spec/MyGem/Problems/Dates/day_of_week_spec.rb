require_relative '../../../../lib/MyGem/Problems/Dates/day_of_week'
describe "Day of Week" do

  it "returns 0 for Sunday" do
    expect(MyGem::Problems::Dates::DayOfWeek.display(2023, 2, 19)).to eq(0)
  end

  it "returns 1 for Monday" do
    expect(MyGem::Problems::Dates::DayOfWeek.display(2023, 2, 20)).to eq(1)
  end

  it "returns 2 for Tuesday" do
    expect(MyGem::Problems::Dates::DayOfWeek.display(2023, 2, 21)).to eq(2)
  end

  it "returns 3 for Wednesday" do
    expect(MyGem::Problems::Dates::DayOfWeek.display(2023, 2, 22)).to eq(3)
  end

  it "returns 4 for Thursday" do
    expect(MyGem::Problems::Dates::DayOfWeek.display(2023, 2, 23)).to eq(4)
  end

  it "returns 5 for Friday" do
    expect(MyGem::Problems::Dates::DayOfWeek.display(2023, 2, 24)).to eq(5)
  end

end
