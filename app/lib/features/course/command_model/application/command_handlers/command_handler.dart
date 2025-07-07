

import 'package:dartz/dartz.dart';

abstract class CommandHandler<T, F> {
  Future<Either<F, Unit>> handle(T command);
}