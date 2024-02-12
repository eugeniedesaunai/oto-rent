import 'dart:convert';
import 'package:http/http.dart' as http;

//const _url = "http://eugeniedesaunai-server.eddi.cloud:3000/agencies";
const _url = "https://53efce2bf840463f9c8a7cd6fed9f33c.api.mockbin.io/";

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
