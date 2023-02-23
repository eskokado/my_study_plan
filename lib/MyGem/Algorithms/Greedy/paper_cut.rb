module MyGem
  module Algorithms
    module Greedy
      class PaperCut
        def initialize(num_vertices)
          @num_vertices = num_vertices
          @adjacency_list = Array.new(num_vertices) { [] }
        end

        def add_edge(from, to, weight)
          @adjacency_list[from] << [to, weight]
          @adjacency_list[to] << [from, weight]
        end

        def prim_mst
          # Initialize arrays to track visited nodes and edge weights
          visited = Array.new(@num_vertices, false)
          key = Array.new(@num_vertices, Float::INFINITY)

          # Set the first node as the starting node
          key[0] = 0
          queue = [0]

          # Iterate until all nodes are visited
          while queue.any?
            # Get the node with the lowest edge weight
            u = queue.min_by { |node| key[node] }

            # Mark node as visited and remove from queue
            visited[u] = true
            queue.delete(u)

            # Update the key for adjacent nodes if they haven't been visited and have a lower edge weight
            @adjacency_list[u].each do |v, weight|
              unless visited[v] || weight >= key[v]
                key[v] = weight
                queue << v
              end
            end
          end

          # Sum the weights of the edges in the MST
          key.sum
        end
      end
    end
  end
end
