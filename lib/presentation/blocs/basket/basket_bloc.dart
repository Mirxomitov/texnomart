import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';
import 'package:texnomart/data/source/local/hive/hive_helper.dart';

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
    on<AddToFavorite>((event, emit) => _addToFavourite(event, emit));
    on<RemoveFromFavorite>((event, emit) => _removeFromFavourite(event, emit));
  }

  _loadBasketData(LoadBasketData event, Emitter<BasketState> emit) {
    final ls = HiveHelper.basket.values.toList();
    print("bloc loaded data : $ls");
    emit(
      state.copyWith(
        basketList: ls,
        allCount: ls.length,
        status: Status.success,
        allChecked: _checkAllChecked(ls),
        allPrice: _calculatePrice(ls.toList()),
      ),
    );
  }

  _onClickCheckBox(OnClickCheckBox event, Emitter<BasketState> emit) {
    final ls = state.basketList![event.index];
    ls.isChecked = !ls.isChecked;

    emit(state.copyWith(
      basketList: state.basketList,
      allChecked: _checkAllChecked(state.basketList!),
      allPrice: _calculatePrice(state.basketList!),
    ));
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
    HiveHelper.deleteBasketData(ls[event.index]);
    ls.removeAt(event.index);

    emit(state.copyWith(
      basketList: ls,
      allPrice: _calculatePrice(ls),
      allCount: ls.length,
      allChecked: _checkAllChecked(ls),
    ));
  }

  _addToFavourite(AddToFavorite event, Emitter<BasketState> emit) {
    state.basketList![event.index].isFavourite = true;
    HiveHelper.addToFavourite(state.basketList![event.index].toFavouriteModel(true));
    emit(state.copyWith(basketList: state.basketList));
  }

  _removeFromFavourite(RemoveFromFavorite event, Emitter<BasketState> emit) {
    state.basketList![event.index].isFavourite = false;
    HiveHelper.deleteFavouriteData(state.basketList![event.index].toFavouriteModel(false));
    emit(state.copyWith(basketList: state.basketList));
  }
}
