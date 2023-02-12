require_relative '../../../app/algorithms/searching/fibonacci_search'
describe "Fibonacci search" do
  array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  it "Given an array call fibonacci search return index of element" do
    item = 8
    result = Algorithms::Searching.fibonacci_search(array, item)
    expect(result).to be > -1
  end

  it "Given an array call fibonacci search return -1" do
    item = 11
    result = Algorithms::Searching.fibonacci_search(array, item)
    expect(result).to be == -1
  end
end
