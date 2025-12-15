class Quad<A, B, C, D> {
  const Quad(this.first, this.second, this.third, this.fourth);

  final A first;
  final B second;
  final C third;
  final D fourth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Quad &&
          first == other.first &&
          second == other.second &&
          third == other.third &&
          fourth == other.fourth;

  @override
  int get hashCode => Object.hash(first, second, third, fourth);

  @override
  String toString() => 'Quad($first, $second, $third, $fourth)';
}
