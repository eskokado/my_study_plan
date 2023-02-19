require_relative '../../../lib/algorithms/greedy/minimum_squares'
describe "Paper cut into Minimum number of squares" do
  it 'Given dimension width and height call min squares return area square' do
    l = 10 # width
    b = 15 # height

    result = Algorithms::Greedy.min_squares(l, b)
  end
end
