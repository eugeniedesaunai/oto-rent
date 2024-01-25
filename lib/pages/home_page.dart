import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/blocs/vehicule_cubit.dart';
import 'package:oto_rent/components/vehicule_list_view.dart';
import 'package:oto_rent/components/vehicules_grid.dart';

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
      body: BlocBuilder<VehiculeCubit, VehiculeState>(
        builder: (context, state) {
          if (state is VehiculeStateInitial) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            );
          }
          if (state is VehiculeStateLoaded) {
            return switch (_displayKind) {
              DisplayKind.grid => VehiculesGrid(
                  vehicules: state.vehicules,
                ),
              DisplayKind.list => VehiculeListView(
                  vehicules: state.vehicules,
                )
            };
          }
          if (state is VehiculeStateError) {
            return Center(
              child: Text(state.message),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
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
