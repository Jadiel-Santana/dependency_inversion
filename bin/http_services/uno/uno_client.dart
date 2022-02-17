import 'package:uno/uno.dart';
import '../http_service.dart';

class UnoClient implements HttpService {
  final Uno _uno;

  UnoClient(this._uno);

  @override
  Future get(String url) async {
    final response = await _uno.get(url);
    if (response.status == 200) {
      return response.data;
    } else {
      throw Exception('Erro ao acessar o Servidor');
    }
  }
}