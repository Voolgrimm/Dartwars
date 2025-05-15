import 'dart:io';

void run() {
  
  print("Select your side (1 - Rebels / 2 - Empire) : ");
  stdout.write("faites un choix !");

  String? choice = stdin.readLineSync();

  if (choice == "1") {
    print("Welcome to the Rebels ! May the force be with you!");
  } else if (choice == "2") {
    print("Welcome to the Dark Side of the Force!");
  } else {
    print("Bad choice !");
  }
}