import heapq

def prim(graph, start):
    mst = []
    visited = set([start])
    edges = [
        (cost, start, to)
        for to, cost in graph[start].items()
    ]
    heapq.heapify(edges) #Converting EdgesList to a Heap

    while edges:
        cost, frm, to = heapq.heappop(edges)
        if to not in visited:
            visited.add(to)
            mst.append((frm, to, cost))

            for to_next, cost2 in graph[to].items():
                if to_next not in visited:
                    heapq.heappush(edges, (cost2, to, to_next))

    return mst

graph = {
    'A': {'B': 4, 'C': 3},
    'B': {'A': 2, 'C': 1, 'D': 4},
    'C': {'A': 3, 'B': 1, 'D': 5},
    'D': {'B': 4, 'C': 5},
}

print(prim(graph, 'A'))
