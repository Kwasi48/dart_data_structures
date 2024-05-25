import 'linked_list.dart';

void main() {
  final linq = LinkedList<int>();
  linq.push(3);
  linq.push(4);
  linq.push(5);
  print(linq);
  print("--------------------------------------------------");

  void reverseNodes(LinkedList<int> list) {
    final internal = LinkedList<int>();

    for (var element in list) {
      internal.push(element);
    }

    for (var element in internal) {
      print(element);
    }
  }

  reverseNodes(linq);
}
