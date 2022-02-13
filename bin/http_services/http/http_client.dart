import 'dart:convert';
import 'package:http/http.dart';
import '../http_service.dart';

class HttpClient implements HttpService {
  final Client _http;

  HttpClient(this._http);

  @override
  Future get(String url) async {
    return jsonDecode((await _http.get(Uri.parse(url))).body);
  }
}