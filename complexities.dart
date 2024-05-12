void main() {
  int sumFromOneTo(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

//Frederick Gauss
  int betterSumFromOneTo(int n) {
    return n * (n + 1) ~/ 2;
  }

  //print(sumFromOneTo(10000));

  //checking time required to compute the code
  final start = DateTime.now();
  final sum = betterSumFromOneTo(9000000000000000000);
  final end = DateTime.now();
  final time = end.difference(start);
  print(sum);
  print(time);
}
