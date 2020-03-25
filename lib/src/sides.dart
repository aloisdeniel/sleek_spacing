class SleekSides {
  final bool hasTop;
  final bool hasBottom;
  final bool hasLeft;
  final bool hasRight;

  static const SleekSides all = SleekSides(
    hasLeft: true,
    hasRight: true,
    hasTop: true,
    hasBottom: true,
  );
  static const SleekSides top = SleekSides(
    hasTop: true,
  );
  static const SleekSides bottom = SleekSides(
    hasBottom: true,
  );
  static const SleekSides right = SleekSides(
    hasRight: true,
  );
  static const SleekSides left = SleekSides(
    hasLeft: true,
  );

  static const SleekSides notRight = SleekSides(
    hasTop: true,
    hasBottom: true,
    hasLeft: true,
  );
  static const SleekSides notTop = SleekSides(
    hasRight: true,
    hasBottom: true,
    hasLeft: true,
  );

  static const SleekSides notLeft = SleekSides(
    hasRight: true,
    hasBottom: true,
    hasTop: true,
  );
  static const SleekSides notBottom = SleekSides(
    hasRight: true,
    hasLeft: true,
    hasTop: true,
  );

  static const SleekSides vertical = SleekSides(
    hasTop: true,
    hasBottom: true,
  );
  static const SleekSides horizontal = SleekSides(
    hasLeft: true,
    hasRight: true,
  );

  SleekSides operator &(other) {
    return this + other;
  }

  SleekSides operator +(other) {
    if (other is SleekSides) {
      return SleekSides(
        hasBottom: this.hasBottom || other.hasBottom,
        hasRight: this.hasRight || other.hasRight,
        hasLeft: this.hasLeft || other.hasLeft,
        hasTop: this.hasTop || other.hasTop,
      );
    }

    return this;
  }

  SleekSides operator -(other) {
    if (other is SleekSides) {
      return SleekSides(
        hasBottom: this.hasBottom && !other.hasBottom,
        hasRight: this.hasRight && !other.hasRight,
        hasLeft: this.hasLeft && !other.hasLeft,
        hasTop: this.hasTop && !other.hasTop,
      );
    }

    return this;
  }

  const SleekSides({
    this.hasTop = false,
    this.hasBottom = false,
    this.hasLeft = false,
    this.hasRight = false,
  })  : assert(hasTop != null),
        assert(hasBottom != null),
        assert(hasLeft != null),
        assert(hasRight != null);
}
