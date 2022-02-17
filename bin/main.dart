import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:uno/uno.dart';
import 'core/models/user_model.dart';
import 'core/repositories/user_repository.dart';
import 'http_services/dio/dio_client.dart';
import 'http_services/http/http_client.dart';
import 'http_services/uno/uno_client.dart';

void main(List<String> arguments) async {
  print('****************** HTTP ******************\n');
  final httpClient = HttpClient(Client());
  final repositoryHttp = UserRepository(httpClient);

  final listHttp = await repositoryHttp.fetch();
  printUsers(listHttp);


  print('\n\n****************** DIO ******************\n');
  final dioClient = DioClient(Dio());
  final repositoryDio = UserRepository(dioClient);

  final listDio = await repositoryDio.fetch();
  printUsers(listDio);


  print('\n\n****************** UNO ******************\n');
  final unoClient = UnoClient(Uno());
  final repositoryUno = UserRepository(unoClient);

  final listUno = await repositoryUno.fetch();
  printUsers(listUno);
}

void printUsers(List<UserModel> users) {
  for (var element in users) {
    print(element);
  }
}