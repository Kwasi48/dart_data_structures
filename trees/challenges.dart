import '../queues/queue.dart';
import 'tree.dart';
void main(){
  //challenge one
  final numbers = levelNumbers();
  numbers.forEachLevelOrder((node) {
     
  });

  printEachLevel(levelNumbers());
}

 void printEachLevel<T>(TreeNode<T> tree) { 
final result = StringBuffer(); 
// 1 
var queue = QueueStack<TreeNode<T>>(); 
var nodesLeftInCurrentLevel = 0; 
  queue.enqueue(tree); 
// 2 
while (!queue.isEmpty) { 
// 3 
    nodesLeftInCurrentLevel = queue.length; 
// 4 
while (nodesLeftInCurrentLevel > 0) { 
final node = queue.dequeue(); 
if (node == null) break; 
      result.write('${node.value} '); 
for (var element in node.children) { 
        queue.enqueue(element); 
      } 
      nodesLeftInCurrentLevel -= 1; 
    } 
// 5 
    result.write('\n'); 
  } 
print(result); 
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