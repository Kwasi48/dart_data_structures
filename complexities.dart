void main() {
  int sumFromOneTo(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  print(sumFromOneTo(10000));
}
