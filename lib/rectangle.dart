import 'dart:math';

class Rectangle {
  int width;
  int length;
  Point origin;

  Rectangle({this.width = 0, this.length = 0, this.origin = const Point(0, 0)});

  @override
  String toString() =>
      'Rectangle: length=$length, width=$width, origin=(${origin.x}, ${origin.y})';
}
