import 'package:dartz/dartz.dart';
import 'package:kimit_workshop/core/services/errors.dart';
import 'package:kimit_workshop/features/auth/data/data_source/remote_data_source.dart';
import 'package:kimit_workshop/features/auth/data/models/user_model/user_model.dart';
import 'package:kimit_workshop/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepoImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, UserModel>> login(
      String email, String password) async {
    try {
      var result = await remoteDataSource.login(email, password);
      return Right(result);
    } on Exception catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
