import 'data/brand.dart';
import 'data/car.dart';
import 'data/vehicle.dart';
import 'data/race.dart';

class Fortuner extends Vehicle with Race, SafeDrive implements Car, Brand {
  @override
  String name = 'Fortuner';

  @override
  void drive() {
    print('Let\'s drive a Fortuner..');
  }

  @override
  int getTire() {
    return 4;
  }

  @override
  String brand() => 'Toyota';

  // override 'Object' default method
  @override
  String toString() {
    return '${brand()} Fortuner';
  }
}

void main() {
  Fortuner myCar = Fortuner();

  myCar.drive();
  print(myCar.getTire());
  print(myCar.brand());

  // call mixins method
  myCar.circuit = 'Mandalika';
  myCar.speed = 10;
  myCar.slow();
  myCar.racing();

  print(myCar.hasEngine);
  print(myCar);

  Fortuner myCar2 = Fortuner();

  print(myCar.hashCode);
  print(myCar2.hashCode);
}
