import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/blocs/agencies_cubit.dart';
import 'package:oto_rent/components/agencies_builder.dart';
import 'package:oto_rent/components/agencies_list.dart';
import 'package:oto_rent/components/vehicules_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const name = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Agencies',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Vehicules',
            icon: Icon(Icons.car_rental),
          ),
        ],
      ),
      body: switch (_currentIndex) {
        0 => const AgencyBuilder(),
        1 => const VehiculeBuilder(),
        _ => const SizedBox(),
      });
}
