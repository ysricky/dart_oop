import 'data/book.dart';

void main() {
  Book magazine = Book('Femina');
  Book tabloid = Book(150);
  Book koran = Book(true);

  print(magazine.title);
  print(tabloid.title);
  print(koran.title);
}
