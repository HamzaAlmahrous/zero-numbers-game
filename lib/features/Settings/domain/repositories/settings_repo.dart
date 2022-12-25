import 'package:dartz/dartz.dart';
import '../../../../core/entities/failure.dart';
import '../entities/settings.dart';

abstract class SettingsRepository {
  Future<Either<Failure, Settings>> getSettings();

  Future<Either<Failure, bool>> saveSettings({required bool audioOn});
}
