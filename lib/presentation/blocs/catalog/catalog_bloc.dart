import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';
import 'package:texnomart/utils/status.dart';

import '../../../data/source/remote/response/catalog_menu/catalog_menu.dart';
import '../../../di/di.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final _repository = di<MainRepository>();

  CatalogBloc() : super(CatalogState.initial()) {
    on<GetCatalogMenuEvent>((event, emit) => _loadCatalogMenu(event, emit));
  }

  _loadCatalogMenu(GetCatalogMenuEvent event, Emitter<CatalogState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final data = await _repository.getCatalogs();
    emit(state.copyWith(catalogMenuData: data, status: Status.success));
  }
}
