class Person {
  String? name;
  int? birthYear;

  // using optional default parameter
  Person(this.name, {this.birthYear = 999});

  void greet() {
    print('My name is $name and I was born in $birthYear');
  }
}

void main() {
  Person person1 = Person('Jeff', birthYear: 1977); // paraYear => override default value parameter
  person1.greet();
}
