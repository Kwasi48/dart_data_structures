import '../linked list/linked_list.dart';

void main() {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);

  node1.next = node2;
  node2.next = node3;

  // print(node1);

  // final list = LinkedList<int>();
  // list.push(3);
  // list.push(2);
  // list.push(1);

  // print(list);

  // //tail test
  // final lid = LinkedList<int>();
  // lid.append(1);
  // lid.append(2);
  // lid.append(3);

  // print(lid);

  //insertAfter test
  // final lisr = LinkedList<int>();
  // lisr.push(3);
  // lisr.push(2);
  // lisr.push(1);

  // print('Before: $lisr');

  // var middleNode = lisr.nodeAt(1)!;
  // lisr.insertAfter(middleNode, 42);

  // print('After: $lisr');

//testing pop
  final lisr = LinkedList<int>();
  lisr.push(3);
  lisr.push(2);
  lisr.push(1);

  print('Before: $lisr');

  final poppedValue = lisr.pop();

  print('After: $lisr');
  print('Popped value: $poppedValue');

  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  // print('Before: $list');
  // final removedValue = list.removeLast();
  // print('After:  $list');
  // print('Removed value: $removedValue');

  print('Before: $list');
  final firstNode = list.nodeAt(0);
  final removedValue = list.removeAfter(firstNode!);
  print('After:  $list');
  print('Removed value: $removedValue');
}
