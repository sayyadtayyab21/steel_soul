class Quint<A, B, C, D, E> {
  const Quint(this.first, this.second, this.third, this.fourth, this.fifth);

  final A first;
  final B second;
  final C third;
  final D fourth;
  final E fifth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Quint &&
          first == other.first &&
          second == other.second &&
          third == other.third &&
          fourth == other.fourth &&
          fifth == other.fifth;

  @override
  int get hashCode => Object.hash(first, second, third, fourth, fifth);

  @override
  String toString() =>
      'Quint($first, $second, $third, $fourth, $fifth)';
}