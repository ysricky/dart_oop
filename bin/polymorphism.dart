class Employee {
  String name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Employee {
  VicePresident(String name) : super(name);
}

// type check on method polymorphism
void sayHello(Employee emply) {
  if (emply is Manager) {
    print('Good morning Manager ${emply.name}');
  } else if (emply is VicePresident) {
    print('Good morning Vice President ${emply.name}');
  } else {
    print('Good morning Employee ${emply.name}');
  }
}

void main() {
  Employee employee = Employee('Steve');
  sayHello(employee);

  employee = Manager('Bob');
  sayHello(employee);

  employee = VicePresident('Malcolm');
  sayHello(employee);
}
