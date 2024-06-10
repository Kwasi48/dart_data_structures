import "deque.dart";
import "doubly_linked_list.dart";
import "ring_buffer.dart";

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
  E? dequeue() => _list.pop();

  @override
  bool enqueue(E element) {
    _list.append(element);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  // TODO: implement peek
  E? get peek => _list.head?.value;

  @override
  String toString() => _list.toString();
}

class QueueRingBuffer<E> implements Queue<E> {
  QueueRingBuffer(int length) : _ringBuffer = RingBuffer<E>(length);

  final RingBuffer<E> _ringBuffer;
  
  @override
  E? dequeue() => _ringBuffer.read();
  
  @override
  bool enqueue(E element) {
    if (_ringBuffer.isFull){
      return false;
    }
    _ringBuffer.write(element);
    return true;
  
  }
  
  @override
  bool get isEmpty => _ringBuffer.isEmpty;
  
  @override
  
  E? get peek =>  _ringBuffer.peek;

  @override
  String toString() => _ringBuffer.toString();
}

class QueueStack<E> implements Queue<E>{
  final _leftStack = <E>[];
  final _rightStack = <E>[];
  
  @override
  E? dequeue() {
    if (_leftStack.isEmpty){
      _leftStack.addAll(_rightStack.reversed);
      _rightStack.clear();
    }

    if (_leftStack.isEmpty) return null;
    return _leftStack.removeLast();
    
  }

  int get length => _leftStack.length + _rightStack.length;
  
  @override
  bool enqueue(E element) {
     _rightStack.add(element);
     return true;
  }
  
  @override
  bool get isEmpty =>  _leftStack.isEmpty && _rightStack.isEmpty;
  
  @override
  E? get peek =>  _leftStack.isNotEmpty ? _leftStack.last: _rightStack.first;

  @override
  String toString(){
    final  combined = [
      ..._leftStack.reversed,
      ..._rightStack,
    ].join(',');
    return '[$combined]';
  }

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
     return null;
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
     return null;
  }

  @override
  String toString(){
    return _lizz.toString();
  }

}
