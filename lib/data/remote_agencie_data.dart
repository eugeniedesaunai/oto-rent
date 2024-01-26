import 'dart:convert';
import 'package:http/http.dart' as http;

const _url = "http://eugeniedesaunai-server.eddi.cloud:3000/agencies";

abstract class RemoteAgencieDataSource {
  static Future<List<Map<String, dynamic>>> getAgencies() async {
    // ETAPE 1
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode != 200) {
      throw Exception('${response.statusCode} - ${response.body}');
    }

    // permet de decode le json
    final agenciesList = jsonDecode(response.body) as List<dynamic>;

    return agenciesList.map((e) => e as Map<String, dynamic>).toList();
  }
}
