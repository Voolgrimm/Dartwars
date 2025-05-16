void run() {
  int robotModel = 1;
  List<String> droids = [];

  for (int i = 0; i < 5; i++) {
    String droid = "R2-D$robotModel";
    print("R2-D$robotModel");
    droids.add(droid);
    robotModel++;
  }

  List<String> evenDroids = droids
      .where((droid) {
        String numberPart = droid.split('-')[1].substring(1);
        int modelNumber = int.parse(numberPart);
        return modelNumber % 2 == 0;
      })
      .toList();

  print('Droïdes pairs : $evenDroids');

  // Inversion avec asMap + entries + map
  List<String> reversedDroids = droids
      .asMap()                                      // transforme en Map<int, String>
      .entries                                      // Iterable<MapEntry<int,String>>
      .map((entry) {                                // on ouvre la closure avec (entry) {
        int i = entry.key;                          // l’index courant
        return droids[droids.length - 1 - i];       // on retourne l’élément "symétrique"
      })                                           // on ferme la closure et la parenthèse de map
      .toList();                                    // on convertit en List<String>

  // Affichage
  print(reversedDroids);

  //reversedDroids = droids.reversed.toList();
  //print(reversedDroids);
  }