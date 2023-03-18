import 'dart:math';

abstract class Shape {
  num get area;
// another way to create a factory
  factory Shape(String type) {
    if (type == 'circle') return Circle(7);
    if (type == 'square') return Square(5);
    throw 'Can\'t create type';
  }
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  int side;
  Square(this.side);

  @override
  num get area => pow(side, 2);
}

// one way to create a factory
// Shape shapeFactory(String type) {
//   if (type == 'circle') return Circle(7);
//   if (type == 'square') return Square(5);
//   throw 'Can\'t create type';
// }

class CircleMock implements Circle {
  num area = 0;
  num radius = 0;
}
