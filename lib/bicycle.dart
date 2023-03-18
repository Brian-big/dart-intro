class Bicycle {
  int cadence;
  var _speed = 89;
  int gear;

  Bicycle(this.cadence, this.gear);

  @override
  String toString() => "Bicycle: Speed:- $_speed mph";

  get speed => _speed;

  void applyBrake(int decrement) {
    print('reducing speed by $decrement ...');
    _speed -= decrement;
    print('speed decreased to $_speed');
  }

  void speedUp(int increment) {
    print('increasing speed by ${increment.toString()} ...');
    _speed += increment;
    print('speed increased to $increment');
  }
}
