require_relative '../../../../lib/MyGem/Algorithms/Greedy/paper_cut'
RSpec.describe MyGem::Algorithms::Greedy::PaperCut do
  describe '#prim_mst' do
    it 'returns the minimum spanning tree weight for a graph with 3 vertices and 3 edges' do
      graph = MyGem::Algorithms::Greedy::PaperCut.new(3)
      graph.add_edge(0, 1, 2)
      graph.add_edge(0, 2, 3)
      graph.add_edge(1, 2, 1)
      expect(graph.prim_mst).to eq(3)
    end

  end
end
