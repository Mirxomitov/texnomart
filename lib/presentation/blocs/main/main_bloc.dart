import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../data/source/remote/response/catalog_menu/catalog_menu.dart';
import '../../../utils/status.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<ChangeBottomNavigation>((event, emit) => _changeBottomNavigation(event, emit));
    on<AddToBasket>((event, emit) => _addToBasket(event, emit));
  }

  _changeBottomNavigation(ChangeBottomNavigation event, Emitter<MainState> emit) {
    if (event.chosenIndex == 2) {
      print(MainRepository.basketData.length);
      emit(state.copyWith(notificationCount: MainRepository.basketData.length));
    }
    emit(state.copyWith(bottomNavigationIndex: event.chosenIndex));
  }

  _addToBasket(AddToBasket event, Emitter<MainState> emit) {
    emit(state.copyWith());
  }
}
