import 'package:dartz/dartz.dart';
import 'package:zero_numbers_game/features/Settings/data/models/settings_model.dart';
import '../../../../core/entities/failure.dart';
import '../../domain/repositories/settings_repo.dart';
import '../data_sources/settings_local_data_sources.dart';

class SettingsRepositoryImpl extends SettingsRepository {
  final SettingsLocalDataSource localDataSource;

  SettingsRepositoryImpl({required this.localDataSource});

    @override
  Future<Either<Failure, SettingsModel>> getSettings() async {
    try {
      SettingsModel settings = await localDataSource.getSettings();
      return Right(settings);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> saveSettings({required bool audioOn}) async {
    try {
      bool done = await localDataSource.saveSettings(audioOn: audioOn);
      return Right(done);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString().substring(11)));
    }
  }

}
