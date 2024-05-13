class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n---------------';
  }
}
