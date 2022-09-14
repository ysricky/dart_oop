abstract class Animal {
  String? name;
  int _legs = 0;

  void run();
}

class Bird extends Animal {
  @override
  void run() {
    if (_legs == 0) {
      print('$name can\'t run, because she doesn\'t have leg');
      return;
    }
    print('$name is running with $_legs leg..');
  }

  // getter setter
  int get legs => _legs;

  set legs(int l) {
    if (l % 2 != 0) {
      print('Bird can\'t have odd value of legs');
      return;
    } else if (l <= 0) {
      print('Bird must have a leg!');
      return;
    }
    _legs = l;
    print('Bird legs confirmed.');
  }
}
