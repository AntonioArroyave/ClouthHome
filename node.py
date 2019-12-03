import numpy as np
from flask import Flask, jsonify, request

class Node:
    def __init__(self):
        self.adn = np.array([[0,1,0],[0,0,1],[1,0,0]])
        self.number_of_nodes = np.linalg.matrix_rank(self.adn)
        self.NAT = np.zeros(self.number_of_nodes)

    def getIdentity(self):
        for index, estructuralNode in enumerate(self.NAT):
            if self.NAT[index] == 0 :
                self.NAT[index] = 1
                #todo recibir urls en la tabla NAT
                break
        print(self.NAT)
app = Flask(__name__)

node = Node()

@app.route('/', methods=['GET'])
def input():
    response = {'node': "Nodos"}
    print(node.adn)
    print(node.number_of_nodes)
    print(node.NAT)
    node.getIdentity()
    return jsonify(response), 200


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=1020)
print("Hola todos")
