import 'binary_node.dart';

class BinarySearchTree<E extends Comparable<dynamic>>{
  BinaryNode<E>? root;

  @override 
  String toString() => root.toString();

  void insert(E value){
    root = _insertAt(root, value);
  }

  BinaryNode<E> _insertAt(BinaryNode<E>? node, E value){
    //1
    if (node == null){
      return BinaryNode(value);
    }
    //2
    if (value.compareTo(node.value) < 0){
      node.leftChild = _insertAt(node.leftChild, value);
    } else {
      node.rightChild = _insertAt(node.rightChild, value);
    }
    //3
    return node;
  }
}