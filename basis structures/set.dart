void main() {
  var bag = {'Candy', 'Juice', 'Gummy'};
  bag.add('Candy');
  print(bag);

  //used for finding duplicates
  final myList = [1, 2, 2, 3, 4];
  final mySet = <int>{};
  for (final item in myList) {
    if (mySet.contains(item)) {}
    mySet.add(item);
  }

  print(mySet);
}
