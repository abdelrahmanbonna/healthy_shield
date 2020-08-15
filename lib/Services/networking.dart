import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  Future getDataGet(String url) async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future sendDataGet(String url) async {}

  Future getDataPost(map, String url) async {
    try {
      final response = await http.post(
        "$url",
        body: json.encode(map),
        headers: {'Content-Type': 'application/json'},
      ).timeout(
        const Duration(seconds: 30),
      );

      return json.decode(response.body);
    } catch (e) {
      print(e);
    }
  }

  Future sendDataPost(map, String url) async {
    try {
      final response = await http.post(
        "$url",
        body: json.encode(map),
        headers: {'Content-Type': 'application/json'},
      ).timeout(
        const Duration(seconds: 30),
      );
      return json.decode(response.body);
    } catch (e) {
      print(e);
    }
  }
}
