import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  String aPIUrl = "http://127.0.0.1:8000/api/";

  Future requestGet(String url) async {
    http.Response response = await http.get(aPIUrl + url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future requestPost(map, String url) async {
    try {
      final response = await http.post(
        '${aPIUrl + url}',
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
