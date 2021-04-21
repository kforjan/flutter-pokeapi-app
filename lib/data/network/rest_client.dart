import 'package:http/http.dart' as http;
import 'dart:convert';

class RestClient {
  Future<dynamic> get(String url) async {
    final response = await http.get(Uri.parse(url));
    final resBody = response.body;
    final statusCode = response.statusCode;
    if (statusCode < 200 || statusCode >= 400) {
      throw Exception(); //todo: NetworkException
    }
    return jsonDecode(resBody);
  }
}
