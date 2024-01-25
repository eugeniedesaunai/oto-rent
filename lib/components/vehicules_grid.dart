import 'package:flutter/material.dart';
import 'package:oto_rent/components/vehicules_card.dart';
import 'package:oto_rent/models/vehicule_model.dart';

class VehiculesGrid extends StatelessWidget {
  const VehiculesGrid({
    required this.vehicules,
    super.key,
  });

  final List<VehiculeModel> vehicules;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
          8.0), // Ajoute du padding autour de toutes les cartes
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // nb de card par ligne
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: vehicules.length,
        // permet de créer une carte pour chaque élément
        itemBuilder: (context, index) {
          return VehiculeCard(
            vehicule: vehicules.elementAt(index),
          );
        },
      ),
    );
  }
}
