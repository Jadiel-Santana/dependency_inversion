import '../../http_services/http_service.dart';
import '../utils/constants.dart';
import '../models/user_model.dart';

class UserRepository {
  final HttpService _httpService;

  UserRepository(this._httpService);

  Future<List<UserModel>> fetch() async {
    final response = await _httpService.get(Constants.BASE_URL_API);
    return response.map<UserModel>((map) => UserModel.fromJson(map)).toList();
  }
}