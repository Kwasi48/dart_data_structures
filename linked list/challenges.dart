import 'linked_list.dart';

void main() {
  final linq = LinkedList<int>();
  linq.push(1);
  linq.push(2);
  linq.push(3);
  //linq.push(4);
  print(linq);
  print("--------------------------------------------------");

//challenge 1
  void reverseNodes(LinkedList<int> list) {
    final internal = LinkedList<int>();

    for (var element in list) {
      internal.push(element);
    }

    for (var element in internal) {
      print(element);
    }
    //print("--------------------------------------------------");
    //print(internal.length);
  }

  //Challenge2
  void retMiddle(LinkedList<int> list) {
    double middle = (list.length - 1) / 2;
    print(middle);
    print(' middle is ${list.nodeAt(middle.toInt())?.value}');
  }

//challenge3
  LinkedList<int>? reversedLl(LinkedList list) {
    final internal = LinkedList<int>();

    for (var element in list) {
      internal.push(element);
    }
    return internal;
  }

  reverseNodes(linq);
  retMiddle(linq);

  print('============');
  print(linq);
  print(reversedLl(linq));
}
