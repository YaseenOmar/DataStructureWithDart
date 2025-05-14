class Node {
  final int data;
  Node? next;

  Node(this.data);
}

Node? removeAllOccurrences(Node? head, int target) {
  while (head != null && head.data == target) {
    head = head.next;
  }

  if (head == null) return null;

  Node current = head;
  while (current.next != null) {
    if (current.next?.data == target) {
      current.next = current.next?.next;
    } else {
      current = current.next!;
    }
  }

  return head;
}
void printList(Node? head) {
  var current = head;
  final buffer = StringBuffer();
  while (current != null) {
    buffer.write('${current.data}');
    if (current.next != null) buffer.write(' -> ');
    current = current.next;
  }
  print(buffer.toString());
}
void main() {
  final node1 = Node(1);
  final node2 = Node(2);
  final node3 = Node(2);
  final node4 = Node(3);
  final node5 = Node(2);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  print('Original list:');
  printList(node1);

  var result = removeAllOccurrences(node1, 2);

  print('After removing 2:');
  printList(result);
}
