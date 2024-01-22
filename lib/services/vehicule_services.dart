import 'package:oto_rent/models/vehicule_model.dart';

class VehiculeServices {
  // Méthode qui simule un appel à une API et retourne une liste de véhicules
  static List<VehiculeModel> getVehicules() {
    // Simulation de la récupération des données de l'API (remplacez cela par un appel réel à une API)
    var vehicules = [
      {
        'mark': 'Audi',
        'model': 'A3',
        'zeroto100': 5.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A4',
        'zeroto100': 7.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Nantes',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A5',
        'zeroto100': 8.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Marseille',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A6',
        'zeroto100': 17.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A7',
        'zeroto100': 17.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A3',
        'zeroto100': 5.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A4',
        'zeroto100': 7.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Nantes',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A5',
        'zeroto100': 8.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Marseille',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A6',
        'zeroto100': 17.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A7',
        'zeroto100': 17.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A3',
        'zeroto100': 5.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A4',
        'zeroto100': 7.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Nantes',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A5',
        'zeroto100': 8.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Marseille',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A6',
        'zeroto100': 17.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
      {
        'mark': 'Audi',
        'model': 'A7',
        'zeroto100': 17.9,
        'energyClass': 'B',
        'power': 110,
        'topspeed': 200,
        'pic':
            'https://www.journalduluxe.fr/files/mercedes-haute-voiture_70b6b237f932ea3aaddcc781e6bd1c0a.jpeg',
        'location': 'Paris',
        'price': 79.0
      },
    ];

    // On crée une liste de VehicleModel
    var vehiclesList = <VehiculeModel>[];

    // On parcourt la liste en entrée, pour chaque élément, on le map avec la factory fromJson
    // et on ajoute le nouvel élément à la liste de sortie
    vehiclesList = vehicules.map((e) => VehiculeModel.fromJson(e)).toList();

    // On retourne le résultat final
    return vehiclesList;
  }
}
