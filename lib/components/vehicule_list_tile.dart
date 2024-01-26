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
          debugPrint("zeroto100 => ${vehicule.zeroto100}");
          debugPrint("ecoclass => ${vehicule.ecoclass}");
          debugPrint("power => ${vehicule.power}");
          debugPrint("topspeed => ${vehicule.topspeed}");
          debugPrint("price => ${vehicule.price}");
          debugPrint("price => ${vehicule.location?.address}");
        },
        leading: vehicule.picture != null
            ? Image.network(
                vehicule.picture.toString(),
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
