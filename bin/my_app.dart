import 'package:my_app/my_app.dart' as my_app;
import 'package:my_app/bicycle.dart';
import 'package:my_app/rectangle.dart';

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
}
