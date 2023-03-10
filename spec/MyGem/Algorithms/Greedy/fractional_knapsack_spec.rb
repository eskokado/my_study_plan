require_relative '../../../../lib/MyGem/Algorithms/Greedy/fractional_knapsack'
RSpec.describe "Fractional Knapsack" do
  let(:item1) { MyGem::Algorithms::Greedy::Item.new(60, 10) }
  let(:item2) { MyGem::Algorithms::Greedy::Item.new(100, 20) }
  let(:item3) { MyGem::Algorithms::Greedy::Item.new(120, 30) }
  let(:item4) { MyGem::Algorithms::Greedy::Item.new(50, 15) }
  let(:item5) { MyGem::Algorithms::Greedy::Item.new(70, 30) }

  it "calculates the correct maximum value with items 1, 2 and 3" do
    items = [item1, item2, item3]
    expect(MyGem::Algorithms::Greedy::Graph.frac_knap_sack(items, 50)).to eq(240.0)
  end

  it "calculates the correct maximum value with items 2, 3 and 4" do
    items = [item2, item3, item4]
    expect(MyGem::Algorithms::Greedy::Graph.frac_knap_sack(items, 40)).to eq(180.0)
  end

  it "calculates the correct maximum value with items 3, 4 and 5" do
    items = [item3, item4, item5]
    expect(MyGem::Algorithms::Greedy::Graph.frac_knap_sack(items, 35)).to eq(136.7)
  end
end
