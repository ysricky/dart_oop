void main() {
  Warrior warrior1 = Warrior();
  Warrior warrior2 = Warrior();

  warrior1.name = 'Cyclops';
  warrior2.name = 'Gandalf';

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
}

class Warrior {
  String? name;
  int health = 100;
  int offense = 10;
  int defense = 5;
  int powerUsage = 0;

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