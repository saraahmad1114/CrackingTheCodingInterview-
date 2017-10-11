//4.1 - Given a directed graph, design an algorithm to  nd out whether there is a route between two nodes

//1. Define the Graph

    class GraphNode {
        
        var visited = false
        var data: Int
        var nodes: [GraphNode]
        
        init(data: Int) {
            self.data = data
            self.nodes = []
        }
        init(data: Int, nodes: GraphNode...) {
            self.data = data
            self.nodes = nodes
        }
    }

//2. Check if the nodes have been visited or not

func explore(node: GraphNode?, end: GraphNode) -> Bool {
        
        if let n = node {
            if n.visited {
                return false
            }
            n.visited = true
            if n === end {
                return true
            }
            for next in n.nodes {
                if explore(node: next, end: end) {
                    return true
                }
            }
        }
        return false
    }
    
func findRoute(start : GraphNode, end: GraphNode) -> Bool {
        
        return explore(node: start, end: end)
    }

//3. Constructing the graph nodes 

func exercise2() {
        
        let node6 = GraphNode(data: 6)
        let node5 = GraphNode(data: 5, nodes: node6)
        let node7 = GraphNode(data: 7)
        let node3 = GraphNode(data: 3, nodes: node7)
        let node4 = GraphNode(data: 4, nodes: node7)
        let node2 = GraphNode(data: 2, nodes: node3, node4, node5)
        let node1 = GraphNode(data: 1, nodes: node2)
        let _ = GraphNode(data: 0, nodes: node1, node2)
        
        let start = node4
        let end = node6
        let res = findRoute(start: start, end: end)
        print("\(start.data) -> \(end.data): \(res)")
    
    }
    
public func run() {
        exercise2()
    }

run()

// Solution discards nodes already visited.
// Since it visits nodes at most once and visits at most all nodes, solution is O(n)

