import "doubly_linked_list.dart";

abstract class Queue<E> {
  bool enqueue(E element);
  E? dequeue();
  bool get isEmpty;
  E? get peek;
}

class QueueList<E> implements Queue<E> {
  final _list = <E>[];

  @override
  dequeue() => (isEmpty) ? null : _list.removeAt(0);

  @override
  bool enqueue(element) {
    _list.add(element);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  get peek => (isEmpty) ? null : _list.first;

  @override
  String toString() => _list.toString();
}

class QueueLinkedList<E> implements Queue<E> {
  final _list = DoublyLinkedList<E>();
  @override
  E? dequeue() {
    // TODO: implement dequeue
    throw UnimplementedError();
  }

  @override
  bool enqueue(E element) {
    // TODO: implement enqueue
    throw UnimplementedError();
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();

  @override
  // TODO: implement peek
  E? get peek => throw UnimplementedError();
}
