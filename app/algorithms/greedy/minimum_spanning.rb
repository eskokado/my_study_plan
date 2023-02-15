class KruskalsMST
  attr_accessor :V, :E, :edge

  def findRoot(subsets, i)
    if (subsets[i].parent == i)
      return subsets[i].parent
    end
    subsets[i].parent = findRoot(subsets, subsets[i].parent)
    return subsets[i].parent
  end

  def union(subsets, x, y)
    rootX = findRoot(subsets, x)
    rootY = findRoot(subsets, y)

    if subsets[rootY].rank < subsets[rootX].rank
      subsets[rootY].parent = rootX
    elsif subsets[rootX].rank < subsets[rootY].rank
      subsets[rootX].parent = rootY
    else
      subsets[rootY].parent = rootX
      subsets[rootX].rank += 1
    end
  end

  def kruskals(v, edges)
    j = 0
    noOfEdges = 0

    subsets = []
    for i in 0..(v - 1)
      subsets.push(Subset.new(i, 0))
    end

    result = []
    while noOfEdges < (v - 1) do
      nextEdge = edges[j]
      x = findRoot(subsets, nextEdge.src)
      y = findRoot(subsets, nextEdge.dest)

      if (x != y)
        result.push(nextEdge)
        union(subsets, x, y)
        noOfEdges += 1
      end

      j += 1
    end

    textResult = "Following are the edges in the constructed MST\n"
    minimumCost = 0
    for i in 0..noOfEdges - 1
      textResult += "#{result[i].src} -- #{result[i].dest} == #{result[i].weight}\n"
      minimumCost += result[i].weight
    end
    textResult += "Minimum Cost Spanning Tree: #{minimumCost}\n"

    return textResult
  end
end

class Edge
  attr_accessor :src, :dest, :weight

  def initialize(src, dest, weight)
    @src = src
    @dest = dest
    @weight = weight
  end
end

class Subset
  attr_accessor :parent, :rank

  def initialize(parent, rank)
    @parent = parent
    @rank = rank
  end
end
