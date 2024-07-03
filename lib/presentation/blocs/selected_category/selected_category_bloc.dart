import 'package:flutter_bloc/flutter_bloc.dart';

part 'selected_category_event.dart';
part 'selected_category_state.dart';

class SelectedCategoryBloc extends Bloc<SelectedCategoryEvent, SelectedCategoryState> {
  SelectedCategoryBloc() : super(SelectedCategoryState.initial()) {
    on<SelectedCategoryEvent>((event, emit) {});
  }
}
