require_relative '../../../lib/algorithms/greedy/fractional_knapsack'
describe "Fractional Knapsack Problem" do
  it "Given wheigts, values and capacity call fractional knapsack return 240.0" do
    weights = [10, 20, 30]
    values = [60, 100, 120]
    capacity = 50
    result = Algorithms::Greedy.fractional_knapsack(weights, values, capacity)
    expect(result).to eq(240.0)
  end

  it "Given wheigts, values and capacity call fractional knapsack return 166.667" do
    weights = [30]
    values = [500]
    capacity = 10
    result = Algorithms::Greedy.fractional_knapsack(weights, values, capacity)
    expect(result).to eq(166.667)
  end
end
