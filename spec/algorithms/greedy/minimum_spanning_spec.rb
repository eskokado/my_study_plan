require_relative '../../../app/algorithms/greedy/minimum_spanning'

describe "Minimum Spanning" do
  it "Minimum Cost Spanning Tree" do
    v = 4
    graphEdges = []
    graphEdges.push(Edge.new(0, 1, 10))
    graphEdges.push(Edge.new(0, 2, 6))
    graphEdges.push(Edge.new(0, 3, 5))
    graphEdges.push(Edge.new(1, 3, 15))
    graphEdges.push(Edge.new(2, 3, 4))

    graphEdges.sort_by! {|edge| edge.weight}

    kruskalsMST = KruskalsMST.new
    textResult = kruskalsMST.kruskals(v, graphEdges)

    puts textResult

    expect(textResult).to be_include("2 -- 3 == 4")
    expect(textResult).to be_include("0 -- 3 == 5")
    expect(textResult).to be_include("0 -- 1 == 10")
    expect(textResult).to be_include("Minimum Cost Spanning Tree: 19")
  end
end
