class Animal {
  String? name;
  String gender = 'Unknown';

  void greet(String paraName) {
    print('hello $paraName, I am a mammal, my name is $name');
  }
}

class Cat extends Animal {
  // Field overriding
  String gender = 'Female';

  // Method overriding
  void greet(String name) {
    print('Meow $name');
  }

  // Super keyword for accessing parent method
  void parentGreet(String name){
    return super.greet(name);
  }
}

void main() {
  Animal animal1 = Animal();
  animal1.name = 'Ania';
  animal1.greet('Malia');
  print(animal1.name);

  Cat cat1 = Cat();
  cat1.name = 'Katy';
  print(cat1.name);
  cat1.greet('Buddy');
  print(cat1.gender);
  cat1.parentGreet('Buddy');
}
