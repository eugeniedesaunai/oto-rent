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
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Liste des voitures disponible',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                  )),
            ),
            Expanded(
              child: VehiculesGrid(),
            ),
            // VehiculesGrid(),
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
