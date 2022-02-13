import '../../http_services/http_service.dart';
import '../utils/constants.dart';
import '../models/users.dart';

class UserRepository {
  final HttpService _httpService;

  UserRepository(this._httpService);

  Future<List<Users>> fetch() async {
    final response = await _httpService.get(Constants.BASE_URL_API);
    return response.map<Users>((map) => Users.fromMap(map)).toList();
  }
}