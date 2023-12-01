// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Failure {
  final String errorMessage;
  Failure({
    required this.errorMessage,
  });
}

class ServerFailure extends Failure {
  ServerFailure({required String errorMessage})
      : super(errorMessage: errorMessage);
}

class CacheFailure extends Failure {
  CacheFailure({required String errorMessage})
      : super(errorMessage: errorMessage);
}
