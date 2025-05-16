import 'package:uuid/uuid.dart';

final Uuid _uuid = Uuid();

class Starship {
  String id;
  String name;
  int cost;
  bool isFlying;

// Constructeur
  Starship({
    String? id,
    required this.name,
    required this.cost,
    this.isFlying = false,
  }) : id = id ?? _uuid.v4(); // Génère un UUID si aucun id fourni

  fly() {
    if (isFlying == false) {
      print("decollage imminent");
      isFlying = true;
    } else {
      throw StarshipException("Starship is already flying");
    }
    return true;
  }

  land() {
    if (isFlying == true) {
      print("Atterrisage imminent");
      isFlying = false;
    } else {
      throw StarshipException("Starship is not flying");
    }
    return true;
  }

  @override
  // ignore: unnecessary_overrides
  String toString() {
    return 'Starship(name: $name, id: $id, cost: $cost, isFlying: $isFlying)';
  }
}

class StarshipException implements Exception {
  final String message;

  StarshipException(this.message);

  @override
  String toString() => 'StarshipException: $message';
}

run(){
  Starship xwing = Starship(name: "x-wings", cost: 1500000, );

  try {
    xwing.fly();
  } catch (e) {
    print(e);
  }

  try {
    xwing.land();
  } catch (e) {
    print(e);
  }
}

