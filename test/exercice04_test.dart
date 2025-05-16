import 'package:test/test.dart';
import 'package:helloworld/exercice04.dart'; // Remplace par le vrai nom de ton projet


void main() {
  group('Starship tests', () {
    test('Starship peut voler', () {
      final ship = Starship(name: 'X-Wing', cost: 100000);
      ship.fly();
      expect(ship.isFlying, isTrue);
    });

    test('Starship peut atterrir', () {
      final ship = Starship(name: 'X-Wing', cost: 100000, isFlying: true);
      ship.land();
      expect(ship.isFlying, isFalse);
    });

    test('Starship ne peut pas voler deux fois', () {
      final ship = Starship(name: 'X-Wing', cost: 100000, isFlying: true);
      expect(() => ship.fly(), throwsA(isA<StarshipException>()));
    });

    test('Starship ne peut pas atterrir deux fois', () {
      final ship = Starship(name: 'X-Wing', cost: 100000, isFlying: false);
      expect(() => ship.land(), throwsA(isA<StarshipException>()));
    });
  });
}
