import 'package:flutter/material.dart';
import 'package:oto_rent/models/vehicule_model.dart';

class VehiculeListTile extends StatelessWidget {
  const VehiculeListTile({
    required this.vehicule,
    super.key,
  });

  final VehiculeModel vehicule;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          debugPrint("zeroto100 => ${vehicule.zeroTo100}");
          debugPrint("energyClass => ${vehicule.energyClass}");
          debugPrint("power => ${vehicule.power}");
          debugPrint("topspeed => ${vehicule.topSpeed}");
          debugPrint("location => ${vehicule.location}");
          debugPrint("price => ${vehicule.price}");
        },
        leading: vehicule.pic != null
            ? Image.network(
                vehicule.pic.toString(),
              )
            : null,
        title: Text(
          vehicule.mark.toString(),
        ),
        subtitle: Text(
          vehicule.model.toString(),
        ),
      ),
    );
  }
}
