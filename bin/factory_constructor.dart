class Database {
  Database(){
    print('Create new database connection.');
  }
  static Database database = Database();

  factory Database.create() {
    return database;
  }

}

void main() {
  Database db1 = Database.create();
  Database db2 = Database.create();

  print(db1 == db2);
}