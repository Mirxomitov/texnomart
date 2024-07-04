import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../di/di.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  final _repository = di<MainRepository>();

  BasketBloc() : super(BasketState.initial()) {
    on<LoadBasketData>((event, emit) => _loadBasketData(event, emit));
    on<OnClickCheckBox>((event, emit) => _onClickCheckBox(event, emit));
    on<ChangeAllChecks>((event, emit) => _onChangeAllChecks(event, emit));
  }

  _loadBasketData(LoadBasketData event, Emitter<BasketState> emit) {
    final value = _repository.getBasketData();
    emit(state.copyWith(basketList: value, allPrice: _calculatePrice(value)));
  }

  _onClickCheckBox(OnClickCheckBox event, Emitter<BasketState> emit) {
    final value = state.basketList![event.index];
    value.isChecked = event.isChecked;

    emit(state.copyWith(basketList: state.basketList));
  }

  _onChangeAllChecks(ChangeAllChecks event, Emitter<BasketState> emit) {
    state.copyWith(allChecked: !state.allChecked);
    final changed = !state.allChecked;
    final ls = state.basketList!;

    for (int i = 0; i < ls.length; ++i) {
      ls[i].isChecked = changed;
      ls[i].save();
    }

    emit(state.copyWith(basketList: ls, allChecked: changed, allCount: ls.length));
  }


  double _calculatePrice(List<BasketModel> value) {
    double res = 0;
    for (final e in value) {
      res += e.price;
    }

    return res;
  }
}
