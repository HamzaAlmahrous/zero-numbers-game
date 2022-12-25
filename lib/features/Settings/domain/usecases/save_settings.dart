import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/entities/failure.dart';
import '../../../../core/entities/usecase.dart';
import '../repositories/settings_repo.dart';

class SaveSettings extends UseCase<bool, SaveSettingsParams>{
  final SettingsRepository repository;

  SaveSettings({required this.repository});

  @override
  Future<Either<Failure, bool>> call({required SaveSettingsParams params}) async {
    return await repository.saveSettings(audioOn: params.audioOn);
  }

}

class SaveSettingsParams extends Equatable {
  final bool audioOn;

  const SaveSettingsParams({required this.audioOn});

  @override
  List<Object> get props => [audioOn];
}