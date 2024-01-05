import 'package:flutter/material.dart';
import 'package:oto_rent/vehicules/vehiculeList.dart';

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
          colorScheme: const ColorScheme.light(
        background: Color.fromARGB(255, 226, 218, 205),
        surface: Color.fromARGB(255, 226, 218, 205),
      )),
      home: const VehiculePage(),
    );
  }
}
