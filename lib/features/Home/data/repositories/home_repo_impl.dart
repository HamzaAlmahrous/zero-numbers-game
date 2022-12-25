import '../../domain/usecases/home_repo.dart';
import '../data_sources/home_local_data_sources.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl({required this.localDataSource});

  //   @override
  // Future<Either<Failure, Home>> getHome() async {
  //   try {
  //     Home Home = await localDataSource.getHome();
  //     return Right(Home);
  //   } on Exception catch (e) {
  //     return Left(Failure(message: e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, bool>> saveHomeFirstTime({required bool firstTime}) async {
  //   try {
  //     bool done = await localDataSource.saveHomeFirstTime(firstTime: firstTime);
  //     return Right(done);
  //   } on Exception catch (e) {
  //     return Left(Failure(message: e.toString().substring(11)));
  //   }
  // }

}
