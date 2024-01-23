import 'package:flutter/material.dart';
import 'package:oto_rent/components/vehicule_list_tile.dart';
import 'package:oto_rent/models/vehicule_model.dart';

class VehiculeListView extends StatelessWidget {
  const VehiculeListView({
    required this.vehicules,
    super.key,
  });

  final List<VehiculeModel> vehicules;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vehicules.length,
      itemBuilder: (context, index) => VehiculeListTile(
        vehicule: vehicules.elementAt(index),
      ),
    );
  }
}
