import 'package:flutter/material.dart';

class VehiculeCard extends StatelessWidget {
  final Map<String, dynamic> vehiculeData;

  const VehiculeCard(this.vehiculeData, {super.key});

  @override
  Widget build(BuildContext context) {
    // permet de récupérer la couleur définis dans le thème

    return Card(
      color: const Color.fromARGB(255, 20, 20, 20),
      // ajoute une ombre
      elevation: 5.0,
      // permet de définir la forme de la bordure de la carte
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        children: [
          // Image en fond avec filtre noir
          Positioned.fill(
            // permet de rogner l'image en fct de la box
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                vehiculeData['pic'],
                // signifie que la largeur de l'image utilisera toute la largeur disponible de son conteneur parent
                width: double.infinity,
                height: 90.0,
                //  ajuste l'image pour couvrir complètement le conteneur en respectant le ratio d'aspect, sans déformer l'image.
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.5), // Filtre noir
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
          // permet de positionner le texte
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${vehiculeData['mark']} ${vehiculeData['model']}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
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
            ),
          )
        ],
      ),
    );
  }
}
