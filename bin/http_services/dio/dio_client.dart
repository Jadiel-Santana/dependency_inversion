import 'package:dio/dio.dart';
import '../http_service.dart';

class DioClient implements HttpService {
  final Dio _dio;

  DioClient(this._dio);

  @override
  Future get(String url) async {
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Erro ao acessar o Servidor');
    }
  }
}