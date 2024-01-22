class VehiculeModel {
  VehiculeModel({
    required this.mark,
    required this.model,
    required this.zeroTo100,
    required this.energyClass,
    required this.power,
    required this.topSpeed,
    required this.pic,
    required this.location,
    required this.price,
  });

  factory VehiculeModel.fromJson(Map<String, dynamic> json) => VehiculeModel(
        mark: json['mark'] as String?,
        model: json['model'] as String?,
        zeroTo100: json['zeroto100'] as double?,
        energyClass: json['energyClass'] as String?,
        power: json['power'] as int?,
        topSpeed: json['topspeed'] as int,
        pic: json['pic'] as String?,
        location: json['location'] as String?,
        price: json['price'] as double?,
      );

  final String? mark;
  final String? model;
  final double? zeroTo100;
  final String? energyClass;
  final int? power;
  final int? topSpeed;
  final String? pic;
  final String? location;
  final double? price;

  Map<String, dynamic> toJson() {
    return {
      'mark': mark,
      'model': model,
      'zeroto100': zeroTo100,
      'energyClass': energyClass,
      'power': power,
      'topspeed': topSpeed,
      'pic': pic,
      'location': location,
      'price': price,
    };
  }

  VehiculeModel copyWith({
    String? mark,
    String? model,
    double? zeroTo100,
    String? energyClass,
    int? power,
    int? topSpeed,
    String? pic,
    String? location,
    double? price,
  }) {
    return VehiculeModel(
      mark: mark ?? this.mark,
      model: model ?? this.model,
      zeroTo100: zeroTo100 ?? this.zeroTo100,
      energyClass: energyClass ?? this.energyClass,
      power: power ?? this.power,
      topSpeed: topSpeed ?? this.topSpeed,
      pic: pic ?? this.pic,
      location: location ?? this.location,
      price: price ?? this.price,
    );
  }
}
