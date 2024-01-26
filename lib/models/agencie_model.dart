class AgencieModel {
  AgencieModel({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
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
}
