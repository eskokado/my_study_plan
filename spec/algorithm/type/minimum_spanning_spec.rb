require_relative '../../../app/algorithm/type/minimum_spanning'

describe "Minimum Spanning" do
  it "Minimum Cost Spanning Tree" do
    # Number of vertices in graph
    v = 4
    # Number of edges in graph
    e = 5
    graph = Graph.new(v, e)

    # add edge 0-1
    graph.edge[0].src = 0
    graph.edge[0].dest = 1
    graph.edge[0].weight = 10

    # add edge 0-2
    graph.edge[1].src = 0
    graph.edge[1].dest = 2
    graph.edge[1].weight = 6

    # add edge 0-3
    graph.edge[2].src = 0
    graph.edge[2].dest = 3
    graph.edge[2].weight = 5

    # add edge 1-3
    graph.edge[3].src = 1
    graph.edge[3].dest = 3
    graph.edge[3].weight = 5

    # add edge 2-3
    graph.edge[4].src = 2
    graph.edge[4].dest = 3
    graph.edge[4].weight = 4

    textResult = graph.KruskalMST()

    puts textResult

    expect(textResult).to be_include("2 -- 3 == 4")
    expect(textResult).to be_include("0 -- 3 == 5")
    expect(textResult).to be_include("0 -- 1 == 10")
    expect(textResult).to be_include("Minimum Cost Spanning Tree: 19")
  end
end
