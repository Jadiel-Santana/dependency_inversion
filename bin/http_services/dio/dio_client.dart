import 'package:dio/dio.dart';
import '../http_service.dart';

class DioClient implements HttpService {
  final Dio _dio;

  DioClient(this._dio);

  @override
  Future get(String url) async => (await _dio.get(url)).data;

}