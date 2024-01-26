import 'package:flutter/material.dart';

class VehiculePage extends StatelessWidget {
  VehiculePage({Key? key, required this.id}) : super(key: key);
  static const name = 'vehicule';
  final String? id;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Page voiture'),
        ),
        body: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            debugPrint(id);
          },
        ),
      );
}
