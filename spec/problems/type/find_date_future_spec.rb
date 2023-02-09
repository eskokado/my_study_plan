require_relative '../../../app/problems/type/find_date_future'

describe "Find date future" do
  it "Should ensure find date future" do
    arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
    q = ["23/3/4345", "4/4/34234234", "12/3/2"]
    findDateFuture = FindDateFuture.new
    result = findDateFuture.perform_queries(arr, q)
    expect(result).to include("23/5/56645")
    expect(result).to include(-1)
    expect(result).to include("4/12/233")
  end
end
