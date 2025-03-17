/// This is the main entry point of the Basic Login App.
/// The app demonstrates a simple login flow using Flutter.
import 'package:basic_login_app/home_page.dart';
import 'package:flutter/material.dart';

/// The main function that runs the app
void main() {
  runApp(MyApp());
}

/// MyApp is the root widget of the application.
/// It sets up the MaterialApp and defines basic app-wide configurations.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
