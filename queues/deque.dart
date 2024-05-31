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
     if (to == Direction.back) {
       _lizz.add(element);
       return true;
     } 
      if (to == Direction.front) {
        _lizz.insert(0, element);
        return true;
      }
     return false; 
     
  }

  @override
  bool get isEmpty => _lizz.isEmpty;

  @override
  E? peek(Direction from) {
     if (from == Direction.front){
      return _lizz.first;
     }
     if (from ==  Direction.back){
      return _lizz.last;
     }
  }

}