import 'package:equatable/equatable.dart';

abstract class Faliure extends Equatable {
  final String message;

  const Faliure(this.message);
  List<Object> get props => [message];
}

class ServerFailure extends Faliure {
  const ServerFailure(super.message);
}
