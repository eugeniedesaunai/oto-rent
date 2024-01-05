import 'package:flutter/material.dart';
import 'package:oto_rent/vehicules/widget.dart/vehiculesGrid.dart';

class VehiculePage extends StatelessWidget {
  const VehiculePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 24, 11, 2),
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
        title: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Image.asset(
            'assets/logo.png',
            height: 30.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: const Column(
        children: [
          Text('Liste des voitures disponible',
              style: TextStyle(
                fontSize: 20.0,
              )),
          Expanded(
            child: VehiculesGrid(),
          ),
          // VehiculesGrid(),
        ],
      ));
}
