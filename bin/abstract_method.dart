import 'data/animal.dart';

void main() {
  Bird birdie = Bird();
  birdie.name = 'Dash';
  birdie.run();

  birdie.legs = 2;
  birdie.run();
}
