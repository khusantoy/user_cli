// Users class
import 'dart:io';

class User {
  // user's fields
  late String username;
  late String password;
  late String fullName;
  late String email;

  User(
      {required this.username,
      required this.password,
      required this.fullName,
      required this.email});

  // change user's password
  void changePassword() {}

  // update user's profile
  void updateProfile() {
    print("Fill your profile");

    stdout.write("Enter your full name: ");
    String? fullName = stdin.readLineSync();

    // validate full name
    while (fullName == '') {
      print("Enter correct full name");
      stdout.write("Enter your full name: ");
      fullName = stdin.readLineSync();
    }
    stdout.write("Enter your username: ");
    String? username = stdin.readLineSync();

    // validate username
    while (username == '' || username!.length < 3) {
      print("Enter correct username");
      stdout.write("Enter your username: ");
      username = stdin.readLineSync();
    }

    stdout.write("Enter your email: ");
    String? email = stdin.readLineSync();

    // validate email
    bool correct = false;

    if (email!.contains('@') &&
        email.contains('.') &&
        email[0] != '@' &&
        email[email.length - 1] != '@' &&
        email[0] != '.' &&
        email[email.length - 1] != '.') {
      correct = true;
    }

    while (email == '' || !correct) {
      print("Enter correct email");
      stdout.write("Enter your email name: ");
      email = stdin.readLineSync();
    }

    stdout.write("Enter your password: ");
    String? password = stdin.readLineSync();

    // validate password
    while (password == '' || password!.length < 6) {
      print("Enter correct password");
      stdout.write("Enter your password name: ");
      password = stdin.readLineSync();
    }

    User user = User(
        username: username,
        password: password,
        fullName: fullName!,
        email: email!);

    user.displayInfo();

    // asking choice that update profile
    stdout.write("Do you want to update profile? (y/n): ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "y":
        user.updateProfile();
        break;
      case "n":
        print("You leaved!");
        exit(0);
      default:
        print("Invalid input!");
        exit(0);
    }
  }

  // display user's info
  void displayInfo() {
    print("""
\nUser's info:
Full name: $fullName
Username: $username
Email: $email
Password: $password
""");
  }
}

void main() {
  print("Fill your profile");

  stdout.write("Enter your full name: ");
  String? fullName = stdin.readLineSync();

  while (fullName == '') {
    print("Enter correct full name");
    stdout.write("Enter your full name: ");
    fullName = stdin.readLineSync();
  }

  stdout.write("Enter your username: ");
  String? username = stdin.readLineSync();

  // validate username
  while (username == '' || username!.length < 3) {
    print("Enter correct username");
    stdout.write("Enter your username: ");
    username = stdin.readLineSync();
  }

  stdout.write("Enter your email: ");
  String? email = stdin.readLineSync();

  // validate email
  bool correct = false;

  if (email!.contains('@') &&
      email.contains('.') &&
      email[0] != '@' &&
      email[email.length - 1] != '@' &&
      email[0] != '.' &&
      email[email.length - 1] != '.') {
    correct = true;
  }

  while (email == '' || !correct) {
    print("Enter correct email");
    stdout.write("Enter your email name: ");
    email = stdin.readLineSync();
  }

  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  // validate password
  while (password == '' || password!.length < 6) {
    print("Enter correct password");
    stdout.write("Enter your password name: ");
    password = stdin.readLineSync();
  }

  User user = User(
      username: username,
      password: password,
      fullName: fullName!,
      email: email!);

  user.displayInfo();

  // asking choice that update profile
  stdout.write("Do you want to update profile? (y/n): ");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case "y":
      user.updateProfile();
      break;
    case "n":
      print("You leaved!");
      exit(0);
    default:
      print("Invalid input!");
      exit(0);
  }
}
