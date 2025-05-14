class Node {
  final int data;
  Node? next;

  Node(this.data);
}

void printInReverse(Node? node) {
  if (node == null) return;

  printInReverse(node.next);
  print(node.data);
}

void main() {
  final node1 = Node(1);
  final node2 = Node(2);
  final node3 = Node(3);

  node1.next = node2;
  node2.next = node3;

  print('Printing linked list in reverse:');
  printInReverse(node1);
}
