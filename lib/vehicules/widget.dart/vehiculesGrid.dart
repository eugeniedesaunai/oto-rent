import 'package:flutter/material.dart';
import 'package:oto_rent/data.dart';
import 'package:oto_rent/vehicules/widget.dart/vehiculesCard.dart';

class VehiculesGrid extends StatelessWidget {
  const VehiculesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
          8.0), // Ajoute du padding autour de toutes les cartes
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // nb de card par ligne
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: Vehicules.vehicules.length,
        // permet de créer une carte pour chaque élément
        itemBuilder: (context, index) {
          return VehiculeCard(Vehicules.vehicules[index]);
        },
      ),
    );
  }
}
