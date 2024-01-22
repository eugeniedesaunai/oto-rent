import 'package:flutter/material.dart';
import 'package:oto_rent/components/vehiculesGrid.dart';
import 'package:oto_rent/data/data.dart';
import 'package:oto_rent/models/vehicule_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text('Profil'),
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
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Liste des voitures disponible',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Montserrat',
                  )),
            ),
            Expanded(
              child: VehiculesGrid(
                vehicules: Vehicules.vehicules
                    .map((e) => VehiculeModel.fromJson(e))
                    .toList(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.home),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.settings),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profil',
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
            ),
          ],
        ),
      );
}
