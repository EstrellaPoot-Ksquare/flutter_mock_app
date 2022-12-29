import 'package:flutter/material.dart';
import 'package:flutter_mock_app/screens/details_screen.dart';
import 'package:flutter_mock_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {'/details': (context) => const DetailsScreen()},
    );
  }
}
