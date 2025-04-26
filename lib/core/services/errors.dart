class Failure {
  final String message;
  final int? code;

  Failure({required this.message, this.code});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message, super.code});
}

class CacheFailure extends Failure {
  CacheFailure({required super.message, super.code});
}

class NetworkFailure extends Failure {
  NetworkFailure({required super.message, super.code});
}

class InvalidInputFailure extends Failure {
  InvalidInputFailure({required super.message, super.code});
}
