import 'dart:convert';
import 'package:http/http.dart';
import '../http_service.dart';

class HttpClient implements HttpService {
  final Client _http;

  HttpClient(this._http);

  @override
  Future get(String url) async {
    final response = await _http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erro ao acessar o Servidor');
    }
  }
}