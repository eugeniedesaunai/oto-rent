import 'package:oto_rent/models/agencie_model.dart';

class VehiculeModel {
  VehiculeModel({
    required this.id,
    required this.mark,
    required this.model,
    required this.zeroto100,
    required this.ecoclass,
    required this.power,
    required this.topspeed,
    required this.picture,
    required this.location,
    required this.price,
  });

  factory VehiculeModel.fromJson(Map<String, dynamic> json) => VehiculeModel(
        id: json['id'] as int?,
        mark: json['mark'] as String?,
        model: json['model'] as String?,
        zeroto100: json['zeroto100'] as double?,
        ecoclass: json['ecoclass'] as String?,
        power: json['power'] as int?,
        topspeed: json['topspeed'] as int?,
        picture: json['picture'] as String?,
        location:
            AgencieModel.fromJson(json['location'] as Map<String, dynamic>),
        price: json['price'] as int?,
      );

  final int? id;
  final String? mark;
  final String? model;
  final double? zeroto100;
  final String? ecoclass;
  final int? power;
  final int? topspeed;
  final String? picture;
  final AgencieModel? location;
  final int? price;

  Map<String, dynamic> toJson() {
    return {
      'mark': mark,
      'model': model,
      'zeroto100': zeroto100,
      'ecoclass': ecoclass,
      'power': power,
      'topspeed': topspeed,
      'picture': picture,
      'location': location,
      'price': price,
    };
  }

  VehiculeModel copyWith({
    int? id,
    String? mark,
    String? model,
    double? zeroto100,
    String? ecoclass,
    int? power,
    int? topspeed,
    String? picture,
    AgencieModel? location,
    int? price,
  }) {
    return VehiculeModel(
      id: id ?? this.id,
      mark: mark ?? this.mark,
      model: model ?? this.model,
      zeroto100: zeroto100 ?? this.zeroto100,
      ecoclass: ecoclass ?? this.ecoclass,
      power: power ?? this.power,
      topspeed: topspeed ?? this.topspeed,
      picture: picture ?? this.picture,
      location: location ?? this.location,
      price: price ?? this.price,
    );
  }
}
