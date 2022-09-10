class Dog {
  String? nickname;
  String? breed;
  String? gender;
}

Dog? createDog() {
  return null;
}

void main() {
  Dog dog1 = Dog()
    ..nickname = 'Choco'
    ..breed = 'Pomerian'
    ..gender = 'Male';

  print(
      '${dog1.nickname} is a ${dog1.breed}, and his gender is ${dog1.gender}');

  // Nullable cascade notation
  Dog? dog2 = createDog()?..nickname = 'Brandon';
}
