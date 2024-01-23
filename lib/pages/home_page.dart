import 'package:flutter/material.dart';
import 'package:oto_rent/components/vehicule_list_view.dart';
import 'package:oto_rent/components/vehicules_grid.dart';
import 'package:oto_rent/models/vehicule_model.dart';
import 'package:oto_rent/services/vehicule_service.dart';

enum DisplayKind {
  grid,
  list,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DisplayKind _displayKind = DisplayKind.grid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (_displayKind == DisplayKind.grid) {
                  _displayKind = DisplayKind.list;
                } else if (_displayKind == DisplayKind.list) {
                  _displayKind = DisplayKind.grid;
                }
              });
            },
            icon: Icon(switch (_displayKind) {
              DisplayKind.list => Icons.grid_on,
              DisplayKind.grid => Icons.list,
            }),
          )
        ],
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
            child:
                // VehiculesGrid(
                //   vehicules: VehiculeService.getVehicules(),
                // ),
                // SOL 1
                // child: _displayKind == DisplayKind.list
                //     ? VehiculeListView(
                //         vehicules: VehiculeService.getVehicules(),
                //       )
                //     : _displayKind == DisplayKind.grid
                //         ? VehiculeGridView(
                //             vehicules: VehiculeService.getVehicules(),
                //           )
                //         : null,

                switch (_displayKind) {
              DisplayKind.grid => VehiculesGrid(
                  vehicules: VehiculeService.getVehicules(),
                ),
              DisplayKind.list => VehiculeListView(
                  vehicules: VehiculeService.getVehicules(),
                )
            },
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
}
