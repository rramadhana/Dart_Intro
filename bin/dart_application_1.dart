import 'package:dart_application_1/core.dart' as app;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${app.calculate()}!');
  print('Program Sederhana Menggunakan Dart');
  print('Hello Silahkan Login ');
  print("Enter your username ? : ");
  String? username = stdin.readLineSync();
  print("Enter your password ? : ");
  String? password = stdin.readLineSync();
  if (app.login(username, password)) {
    app.menu(username);
  }
}
