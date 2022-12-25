import 'package:dartz/dartz.dart';
import '../../../../core/entities/failure.dart';
import '../../../../core/entities/usecase.dart';
import '../entities/settings.dart';
import '../repositories/settings_repo.dart';

class GetSettings extends UseCase<Settings, NoParams>{
  final SettingsRepository repository;

  GetSettings({required this.repository});

  @override
  Future<Either<Failure, Settings>> call({required NoParams params}) async {
    return await repository.getSettings();
  }

}
