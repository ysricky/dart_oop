class Person {
  String? name;
  int? birthYear;

  // using optional default parameter
  Person(String paraName, {int paraYear = 999}) {
    name = paraName;
    birthYear = paraYear;
  }
}

void main() {
  Person person1 = Person('Jeff',
      paraYear: 1977); // paraYear => override default value parameter

  print('My name is ${person1.name} and I was born in ${person1.birthYear}');
}
