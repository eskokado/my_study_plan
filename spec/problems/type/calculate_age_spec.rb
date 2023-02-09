require_relative '../../../app/problems/type/calculate_age'

describe "Calculate Age" do
  it "Function call calculated age" do
    current_date = 7
    current_month = 12
    current_year = 2017

    birth_date = 16
    birth_month = 12
    birth_year = 2009

    calculateAge = CalculateAge.new

    result = calculateAge.calculate(current_date, current_month, current_year, birth_date, birth_month, birth_year)

    expect(result).to be_include("Years: 7")
    expect(result).to be_include("Months: 11")
    expect(result).to be_include("Days: 22")
  end
end
