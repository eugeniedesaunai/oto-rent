import 'package:flutter/material.dart';
import 'package:oto_rent/vehicules/widget.dart/vehiculesGrid.dart';

class VehiculePage extends StatelessWidget {
  const VehiculePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const Drawer(
          width: 200,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text('Agences'),
                ),
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text('Setting'),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('O\'to Rent'),
        ),
        body: VehiculesGrid(),
      );
}
