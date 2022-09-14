// mixin
import 'vehicle.dart';

mixin Race on Vehicle {
  String? circuit;

  void racing() {
    print('Race on $circuit');
  }
}

mixin SafeDrive on Vehicle {
  String? circuit;
  int? speed;

  void slow() {
    print('Driving in $circuit at $speed mph');
  }
}
