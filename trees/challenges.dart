import 'tree.dart';
import 'dart:io';

void main(){
  //challenge one
  final numbers = levelNumbers();
  numbers.forEachLevelOrder((node) {
      
  });

}


TreeNode<int> levelNumbers(){
  final fifteen = TreeNode(15);
  final one = TreeNode(1);
  final seventeen = TreeNode(17);
  final twenty = TreeNode(20);
  final secondone = TreeNode(1);
  final five = TreeNode(5);
  final zero = TreeNode(0);
  final two = TreeNode(2);
  final secondfive = TreeNode(5);
  final seven = TreeNode(7);

  fifteen.add(one);
  fifteen.add(seventeen);
  fifteen.add(twenty);

  one.add(secondone);
  one.add(five);
  one.add(zero);

  seventeen.add(two);

  twenty.add(secondfive);
  twenty.add(seven);

  return fifteen; 
}