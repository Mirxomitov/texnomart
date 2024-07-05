import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';
import 'package:texnomart/data/source/local/hive/hive_helper.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../utils/status.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc() : super(BasketState.initial()) {
    on<LoadBasketData>((event, emit) => _loadBasketData(event, emit));
    on<OnClickCheckBox>((event, emit) => _onClickCheckBox(event, emit));
    on<ChangeAllChecks>((event, emit) => _onChangeAllChecks(event, emit));
    on<Increment>((event, emit) => _increment(event, emit));
    on<Decrement>((event, emit) => _decrement(event, emit));
    on<RemoveProduct>((event, emit) => _removeProduct(event, emit));
  }

  _loadBasketData(LoadBasketData event, Emitter<BasketState> emit) {
    final value = MainRepository.basketData.toList();
    print("bloc loaded data : $value");
    emit(
      state.copyWith(
        basketList: value,
        allCount: value.length,
        status: Status.success,
        allChecked: _checkAllChecked(value),
        allPrice: _calculatePrice(value.toList()),
      ),
    );
  }

  _onClickCheckBox(OnClickCheckBox event, Emitter<BasketState> emit) {
    final value = state.basketList![event.index];
    value.isChecked = !value.isChecked;

    print('on click check');

    emit(state.copyWith(basketList: state.basketList, allPrice: _calculatePrice(state.basketList!)));
  }

  _onChangeAllChecks(ChangeAllChecks event, Emitter<BasketState> emit) {
    state.copyWith(allChecked: !state.allChecked);
    final changed = !state.allChecked;
    final ls = state.basketList!;

    for (int i = 0; i < ls.length; ++i) {
      ls[i].isChecked = changed;
      ls[i].save();
    }

    emit(state.copyWith(basketList: ls, allChecked: changed, allCount: ls.length, allPrice: _calculatePrice(ls)));
  }


  double _calculatePrice(List<BasketModel> value) {
    double res = 0;
    for (final e in value) {
      if (e.isChecked) res += e.price * e.count;
    }

    return res;
  }

  _increment(Increment event, Emitter<BasketState> emit) {
    final ls = state.basketList!;
    final data = state.basketList![event.index];

    if (data.count < 10) {
      data.count++;
      data.save();
    }

    print(data.count);
    print('increment');

    emit(state.copyWith(basketList: ls, allPrice: _calculatePrice(ls)));
  }

  bool _checkAllChecked(List<BasketModel> value) {
    bool allChecked = false;
    for (final e in value) {
      allChecked &= e.isChecked;
    }
    return allChecked;
  }

  _decrement(Decrement event, Emitter<BasketState> emit) {
    final ls = state.basketList!;
    final data = state.basketList![event.index];

    if (data.count > 1) {
      data.count--;
      data.save();
    }

    print(data.count);
    print('decrement');

    emit(state.copyWith(basketList: ls, allPrice: _calculatePrice(ls)));
  }

  _removeProduct(RemoveProduct event, Emitter<BasketState> emit) {
    print('delete');
    final ls = state.basketList!;
    try {
      MainRepository.basketData.remove(ls[event.index]);
      ls.removeAt(event.index);
      HiveHelper.deleteBasketData(ls[event.index]);
    } catch (e) {
      print("basket ls: $ls");
    }

    emit(state.copyWith(basketList: ls, allPrice: _calculatePrice(ls), allCount: ls.length, allChecked: _checkAllChecked(ls)));
  }
}
