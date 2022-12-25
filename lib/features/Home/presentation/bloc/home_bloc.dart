import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zero_numbers_game/features/Home/presentation/bloc/home_event.dart';
import 'package:zero_numbers_game/features/Home/presentation/bloc/home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {

  
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {

      // if(event is CacheHomeFirstTimeEvent) {
      //   emit(HomeLoadingState());
      //   var failureOrSaveHomeIndex = await saveHomeFirstTime(params: SaveHomeFirstTimeParams(firstTime: event.firstTime));
      //   await failureOrSaveHomeIndex.fold(
      //     (failure) async {
      //       emit(HomeErrorState(message: failure.message));
      //     },
      //     (saveHomeFirstTime) async {
      //       emit(SaveHomeFirstTimeSuccessState());
      //     } 
      //   );
      // }   
    });
  }
}
