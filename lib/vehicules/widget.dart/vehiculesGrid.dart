import 'package:flutter/material.dart';
import 'package:oto_rent/data.dart';
import 'package:oto_rent/vehicules/widget.dart/vehiculesCard.dart';

class VehiculesGrid extends StatelessWidget {
  const VehiculesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: Vehicules.vehicules.length,
      itemBuilder: (context, index) {
        return VehiculeCard(Vehicules.vehicules[index]);
      },
    );
  }
}
