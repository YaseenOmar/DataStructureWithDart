class Node {
  final int data;
  Node? next;

  Node(this.data);
}

Node? reverseList(Node? head) {
  Node? previous = null;
  Node? current = head;

  while (current != null) {
    var next = current.next;
    current.next = previous;
    previous = current;
    current = next;
  }

  return previous;
}

void main() {
  final node1 = Node(1);
  final node2 = Node(2);
  final node3 = Node(3);

  node1.next = node2;
  node2.next = node3;

  print('Original list: 1 -> 2 -> 3');
  var reversed = reverseList(node1);
  print('Reversed list: 3 -> 2 -> 1');
  print(reversed);
}
