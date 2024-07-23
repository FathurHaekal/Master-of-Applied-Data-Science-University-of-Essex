# # Enable multiple outputs of a cell
# from IPython.core.interactiveshell import InteractiveShell
# InteractiveShell.ast_node_interactivity = 'all'

import networkx as nx
import matplotlib.pyplot as plt #The module you will need to visualize the networks

#Generate a network G1
# G1 = nx.Graph()
# G1.add_nodes_from([1,2,3,4,5,6,7])
# G1.add_edges_from([(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (2, 2), (2, 5), (2, 6) , (2, 7), (3, 4), 
#                    (4, 5), (4, 7), (5, 7), (4, 5), (4, 7), (6, 7)])

G1 = nx.MultiDiGraph([(1, 1), (1, 2), (1, 2), (1, 4), (2, 1), (3, 4), (4,1)])
# G1.add_nodes_from([1,2,3,4])
# G1.add_edges_from([(1, 1), (1, 2), (1, 2), (1, 4), (2, 1), (3, 4), (4,1)])



nx.draw(G1, with_labels=True, node_color = 'cyan',font_weight='bold')
plt.show()
d = nx.diameter(G1)
print(d)

# p = nx.shortest_path(G1)
# print("List out the shortest paths between every two nodes", p)
# p_l = dict(nx.shortest_path_length(G1))
# print("List out the length of the shortest paths between every two nodes", p_l)
# d = nx.diameter(G1)
# print("The diameter is ", d)
# print("Is it a connected network?", nx.is_connected(G1))


