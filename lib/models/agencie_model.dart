class AgencieModel {
  AgencieModel({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    this.latitude,
    this.longitude,
  });

  factory AgencieModel.fromJson(Map<String, dynamic> json) => AgencieModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        address: json['address'] as String?,
        phone: json['phone'] as String?,
        email: json['email'] as String?,
      );

  final int? id;
  final String? name;
  final String? address;
  final String? phone;
  final String? email;
  final double? latitude;
  final double? longitude;

  AgencieModel copyWith({
    int? id,
    String? name,
    String? address,
    String? phone,
    String? email,
    double? latitude,
    double? longitude,
  }) =>
      AgencieModel(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );
}
