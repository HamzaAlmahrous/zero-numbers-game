import 'package:dartz/dartz.dart';

import '../../../../core/entities/failure.dart';
import '../entities/onboard_response.dart';

abstract class OnBoardRepository {
  Future<Either<Failure, OnBoard>> getOnBoard();

  Future<Either<Failure, bool>> saveOnBoardFirstTime({required bool firstTime});
}
