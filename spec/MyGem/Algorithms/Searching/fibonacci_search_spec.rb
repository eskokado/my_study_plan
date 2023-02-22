require_relative '../../../../lib/MyGem/Algorithms/Searching/fibonacci_search'
describe "Fibonacci search" do
  array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  it "Given an array call fibonacci search return index of element" do
    item = 8
    result = MyGem::Algorithms::Searching::FibonacciSearch.search(array, item)
    expect(result).to be > -1
  end

end
