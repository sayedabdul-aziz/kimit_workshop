import 'package:dartz/dartz.dart';
import 'package:kimit_workshop/core/services/errors.dart';
import 'package:kimit_workshop/features/auth/data/models/user_model/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserModel>> login(String email, String password);
}
