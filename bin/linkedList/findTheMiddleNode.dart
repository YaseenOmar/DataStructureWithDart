class Node {
  final int data;
  Node? next;

  Node(this.data);
}

Node? findMiddle(Node? head) {
  if (head == null) return null;

  var slow = head;
  var fast = head;

  while (fast.next != null && fast.next?.next != null) {
    slow = slow.next!;
    fast = fast.next!.next!;
  }

  return slow;
}

void main() {
  final node1 = Node(1);
  final node2 = Node(2);
  final node3 = Node(3);
  final node4 = Node(4);
  final node5 = Node(5);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  final middle = findMiddle(node1);
  print('Middle node value: ${middle?.data}');
}
