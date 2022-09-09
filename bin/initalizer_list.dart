class FootballPlayer {
  String fullName;
  String? firstName;
  String? lastName;

  FootballPlayer(this.fullName)
      : firstName = fullName.split(' ')[0],
        lastName = fullName.split(' ')[1] {
    print('Football player created');
  }
}

void main(){
  FootballPlayer footballer1 = FootballPlayer('Khvicha Kvaratskhelia');
  print(footballer1.firstName);
  print(footballer1.lastName);
}