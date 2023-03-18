import 'package:my_app/my_app.dart' as my_app;
import 'package:my_app/bicycle.dart';
import 'package:my_app/rectangle.dart';
import 'package:my_app/shape.dart';

void main(List<String> arguments) {
  print('Hello world: ${my_app.calculate()}!');
  final bike = Bicycle(2, 45);
  print(bike);

  print(bike.speed);
  print(bike.cadence);

  bike.applyBrake(32);
  bike.speedUp(56);

  print('#############Rectangle############');
  final rectangle = Rectangle();
  print(rectangle);
  final shape2 = Rectangle(width: 2, length: 43);
  print(shape2);

  print('***********Factories( sth like java abstract classes )**************');

  // one way to initialize using factory pattern
  // final circle = shapeFactory('circle');
  // final square = shapeFactory('square');

  final circle = Shape('circle');
  final square = Shape('square');

  print(circle.area);
  print(square.area);

  final c2 = CircleMock();
  c2.radius = 3.5;
  print(c2.area);
}
