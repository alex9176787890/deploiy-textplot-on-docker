from textplot.helpers import build_graph
import networkx as nx
g = build_graph('pg2600.txt')
nx.write_gml(g.graph, "test.gml")
if __name__ == "__main__":
    print("Textplot service")
