import 'package:dartz/dartz.dart';
import '../../../../core/entities/failure.dart';
import '../../../../core/entities/usecase.dart';
import '../entities/onboard_response.dart';
import '../repositories/onboard_repo.dart';

class GetOnBoardInfo extends UseCase<OnBoard, NoParams>{
  final OnBoardRepository repository;

  GetOnBoardInfo({required this.repository});

  @override
  Future<Either<Failure, OnBoard>> call({required NoParams params}) async {
    return await repository.getOnBoard();
  }

}
