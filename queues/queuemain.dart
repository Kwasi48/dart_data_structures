import 'queue.dart';

void main() {
  // final queue = QueueList<String>();
  // queue.enqueue('Ray');
  // queue.enqueue('Brian');
  // queue.enqueue('Eric');
  // print(queue);

  // queue.dequeue();
  // print(queue);

  // queue.peek;
  // print(queue);

  // final queue = QueueLinkedList<String>();
  // queue.enqueue('Ray');
  // queue.enqueue('Brian');
  // queue.enqueue('Eric');
  // print(queue);

  // queue.dequeue();
  // print(queue);

  // queue.peek;
  // print(queue);

//     final queue = QueueRingBuffer<String>(10);
//   queue.enqueue('Ray');
//   queue.enqueue('Brian');
//   queue.enqueue('Eric');
//   print(queue);

//   queue.dequeue();
//   print(queue);

//   queue.peek;
//   print(queue);
// }
final queue = QueueStack<String>();
  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');
  print(queue);

  queue.dequeue();
  print(queue);

  queue.peek;
  print(queue);

}
