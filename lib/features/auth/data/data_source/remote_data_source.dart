import 'package:kimit_workshop/core/services/dio_provider.dart';
import 'package:kimit_workshop/features/auth/data/models/user_model/user_model.dart';

class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password) async {
    var response = await DioProvider.post(
        endpoint: 'login', data: {'email': email, 'password': password});

    return UserModel.fromJson(response.data);
  }
}
