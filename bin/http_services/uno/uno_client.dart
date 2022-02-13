import 'package:uno/uno.dart';
import '../http_service.dart';

class UnoClient implements HttpService {
  final Uno _uno;

  UnoClient(this._uno);

  @override
  Future get(String url) async => (await _uno.get(url)).data;
}