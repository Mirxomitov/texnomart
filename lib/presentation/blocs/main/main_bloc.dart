import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../data/model/catalog_menu_model.dart';
import '../../../data/source/remote/response/catalog_menu.dart';
import '../../../di/di.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

  final _repository = di<MainRepository>();

  MainBloc() : super(MainState.initial()) {
    on<ChangeBottomNavigation>((event, emit) => _changeBottomNavigation(event, emit));
    on<LoadCatalogMenu>((event, emit) => _loadCatalogMenu(event, emit));
  }

  _changeBottomNavigation(ChangeBottomNavigation event, Emitter<MainState> emit) {
    emit(state.copyWith(bottomNavigationIndex: event.chosenIndex));
  }

  _loadCatalogMenu(LoadCatalogMenu event, Emitter<MainState> emit) async {
    final data = await _repository.getCatalogs();
    emit(state.copyWith(catalogMenuUIData: data));
  }
}
