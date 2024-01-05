import 'package:flutter/material.dart';

class VehiculeCard extends StatelessWidget {
  final Map<String, dynamic> vehiculeData;

  const VehiculeCard(this.vehiculeData, {super.key});

  @override
  Widget build(BuildContext context) {
    // permet de récupérer la couleur définis dans le thème

    return Card(
      color: Color.fromARGB(255, 24, 11, 2),
      // ajoute une ombre
      elevation: 5.0,
      // permet de définir la forme de la bordure de la carte
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          // permet de rogner l'image en fct de la box
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(16.0)),
            child: Image.network(
              vehiculeData['pic'],
              // signifie que la largeur de l'image utilisera toute la largeur disponible de son conteneur parent
              width: double.infinity,
              height: 90.0,
              //  ajuste l'image pour couvrir complètement le conteneur en respectant le ratio d'aspect, sans déformer l'image.
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            // ajoute un padding uniform de chaque coté
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${vehiculeData['mark']} ${vehiculeData['model']}',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Prix: ${vehiculeData['price']} €',
            style: const TextStyle(fontSize: 14.0),
          ),
          Text(
            'Location: ${vehiculeData['location']}',
            style: const TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
