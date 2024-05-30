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

