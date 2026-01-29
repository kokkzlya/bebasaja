import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:bebasaja/domain/models/region.dart';

class RegionService {
  final _client = http.Client();

  Future<List<Region>> fetchProvinces() async {
    final url = Uri.https('wilayah.id', '/api/provinces.json');
    final response = await _client.get(url);
    final body = jsonDecode(response.body) as Map<dynamic, dynamic>;
    final jsonList = body['data'] as List<dynamic>;
    print('>>>>>>>>>>>>>> ADA APA SEBENARNYA? $jsonList');
    return jsonList
        .map((json) => Region.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<List<Region>> fetchRegencies(String provinceCode) async {
    final url = Uri.https('wilayah.id', '/api/regencies/$provinceCode.json');
    final response = await _client.get(url);
    final body = jsonDecode(response.body) as Map<dynamic, dynamic>;
    final jsonList = body['data'] as List<dynamic>;
    return jsonList
        .map((json) => Region.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
