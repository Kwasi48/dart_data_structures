abstract class Queue<E> {
  bool enqueue(E element);
  E? dequeue();
  bool get isEmpty;
  E? get peek;
}

class QueueList<E> implements Queue<E> {
  final _list = <E>[];

  @override
  dequeue() {
    // TODO: implement dequeue
    throw UnimplementedError();
  }

  @override
  bool enqueue(element) {
    // TODO: implement enqueue
    throw UnimplementedError();
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();

  @override
  // TODO: implement peek
  get peek => throw UnimplementedError();
}
