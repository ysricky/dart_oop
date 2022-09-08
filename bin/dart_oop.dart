void main() {
  Warrior warrior1 = Warrior('Cyclops');
  Warrior warrior2 = Warrior('Gandalf');
  Warrior warrior3 = Warrior.offenseValue(50);
  warrior3.name = 'Aragon';

  warrior1.attack(warrior2);
  warrior2.attack(warrior1);
  warrior2.powerUp();
  warrior2.attack(warrior1);
  warrior2.powerUp();
  warrior2.attack(warrior1);
  warrior2.powerUp();
  warrior2.attack(warrior1);
  warrior2.powerUp();
  warrior2.powerUp();
  warrior2.attack(warrior1);
  warrior2.attack(warrior1);
  warrior2.attack(warrior1);

  warrior2.shoutWin();

  warrior3.powerUp();
  warrior3.attack(warrior2);
  warrior3.attack(warrior2);
  warrior3.attack(warrior2);
  warrior3.shoutWin();
}

class Warrior {
  String? name;
  int health = 100;
  int offense = 10;
  int defense = 5;
  int powerUsage = 0;

  // constructor
  Warrior(this.name);

  Warrior.offenseValue(this.offense);

  void attack(Warrior enemy) {
    if (enemy.health <= 0) {
      faint(enemy);
      return;
    }
    enemy.health -= offense - enemy.defense;
    print('$name attack ${enemy.name}! ${enemy.name} health = ${enemy.health}');
  }

  void powerUp() {
    if (powerUsage == 2) {
      offense = 10;
      powerUsage = 0;
    } else {
      print('$name use power up. Attack increase...');
      offense += 10;
      powerUsage++;
    }
  }

  // method expression
  void faint(Warrior foe) => print('${foe.name} has fainted...');
}

// method extension
extension DeclareWin on Warrior {
  void shoutWin() {
    print('$name win with $offense attack power!');
  }
}
