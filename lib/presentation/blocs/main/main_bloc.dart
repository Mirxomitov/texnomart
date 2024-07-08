import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';
import 'package:texnomart/data/source/local/hive/hive_helper.dart';

import '../../../data/source/remote/response/catalog_menu/catalog_menu.dart';
import '../../../utils/status.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<ChangeBottomNavigation>((event, emit) => _changeBottomNavigation(event, emit));
    on<LoadAllBasketData>((event, emit) => _loadAllBasketData(event, emit));
  }

  _changeBottomNavigation(ChangeBottomNavigation event, Emitter<MainState> emit) {
    print('change bottom navigation is worked');
    emit(state.copyWith(notificationCount: HiveHelper.basket.values.toList().length));
    emit(state.copyWith(bottomNavigationIndex: event.chosenIndex));
  }

  _loadAllBasketData(LoadAllBasketData event, Emitter<MainState> emit) {
    final ls = HiveHelper.basket.values.toList();
    emit(state.copyWith(notificationCount: ls.length));
  }
}
