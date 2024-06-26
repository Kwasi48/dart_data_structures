 import 'tree.dart';

void main(){
//   final beverages = TreeNode('Beverages');
//   final hot = TreeNode('Hot');
//   final cold = TreeNode('Cold');
//   beverages.add(hot);
//   beverages.add(cold);
// final tree = makeBeverageTree();
// tree.forEachDepthFirst((node) => print(node.value));

final tree = makeBeverageTree();
//tree.forEachLevelOrder((node)=> print(node.value));

final searchResult1 = tree.Search('ginger ale');
print(searchResult1?.value); 

final searchResult2 = tree.Search('water');
print(searchResult2?.value);
  
}

TreeNode<String> makeBeverageTree(){
    final tree = TreeNode('beverages');
    final hot = TreeNode('hot');
    final cold = TreeNode('cold');
    final tea = TreeNode('tea');
    final coffee  = TreeNode('coffee');
    final chocolate = TreeNode('cocoa');
    final blackTea = TreeNode('black');
    final greenTea = TreeNode('green');
    final chaiTea = TreeNode('chai');
    final soda = TreeNode('soda');
    final milk = TreeNode('milk');
    final gingerAle = TreeNode('ginger ale');
    final bitterLemon = TreeNode('bitter lemon');

    tree.add(hot);
    tree.add(cold);

    hot.add(tea);
    hot.add(coffee);
    hot.add(chocolate);

    cold.add(soda);
    cold.add(milk);

    tea.add(blackTea);
    tea.add(greenTea);
    tea.add(chaiTea);

    soda.add(gingerAle);
    soda.add(bitterLemon);

    return tree;
  }