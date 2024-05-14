import '../stacks/stack.dart';

void main() {
  Stack printReverse(List items) {
    final itemRev = Stack.of(items);
    return itemRev;
  }

  bool balanced(String balance) {
    List change = balance.split('');
    Stack changStack = Stack.of(change);
    return true;
  }

  bool checkParentheses(String text) {
    var stack = Stack<int>();
    final open = '('.codeUnitAt(0);
    final close = ')'.codeUnitAt(0);
    for (int codeUnit in text.codeUnits) {
      if (codeUnit == open) {
        stack.push(codeUnit);
      } else if (codeUnit == close) {
        if (stack.isEmpty) {
          return false;
        } else {
          stack.pop();
        }
      }
    }
    return stack.isEmpty;
  }

  List<String> test = ['k', 'c', 'i', 'p'];
  var test2 = printReverse(test);
  print(test2);
}
