import 'package:dartz/dartz.dart';
import 'package:kimit_workshop/core/services/errors.dart';
import 'package:kimit_workshop/features/auth/data/models/user_model/user_model.dart';
import 'package:kimit_workshop/features/auth/domain/repository/auth_repo.dart';

class LoginUseCase {
  final AuthRepo repo;
  LoginUseCase({required this.repo});
  Future<Either<Failure, UserModel>> login(
      String email, String password) async {
    return await repo.login(email, password);
  }
}
