import 'package:my_app/my_app.dart' as my_app;
import 'package:my_app/bicycle.dart';

void main(List<String> arguments) {
  print('Hello world: ${my_app.calculate()}!');
  final bike = Bicycle(2, 45);
  print(bike);

  print(bike.speed);
  print(bike.cadence);

  bike.applyBrake(32);
  bike.speedUp(56);
}
