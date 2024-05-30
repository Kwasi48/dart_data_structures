enum Direction{
  front,
  back
}

abstract class Deque<E>{
  bool get isEmpty;
  E? peek(Direction from);
  bool enqueue(E element, Direction to);
  E? dequeue (Direction from);
}

class StackDequeue<E> implements Deque<E> {

  final List _lizz = <E>[]; 
  @override
  E? dequeue(Direction from) {
     if (from == Direction.front){
      return _lizz.removeAt(0);
     }  else if (from == Direction.back){
        return _lizz.removeLast();
     }
  }

  @override
  bool enqueue(E element, Direction to) {
    // TODO: implement enqueue
    throw UnimplementedError();
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();

  @override
  E? peek(Direction from) {
    // TODO: implement peek
    throw UnimplementedError();
  }

}