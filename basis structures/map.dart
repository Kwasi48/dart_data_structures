import 'dart:collection';

void main() {
  //Maps
  final score = {'Eric': 9, 'Mark': 12, 'Wayne': 1};
  //adding a new entry
  score['Andrew'] = 0;
  print(score);

  final hashMap = HashMap.of(score);
  print(hashMap);
}
