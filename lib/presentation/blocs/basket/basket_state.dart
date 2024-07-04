part of 'basket_bloc.dart';

class BasketState {
  final List<BasketModel>? basketList;
  final double allPrice;
  final int allCount;
  final bool allChecked;

  factory BasketState.initial() {
    return const BasketState(allPrice: 0, allCount: 0, allChecked: true);
  }

  BasketState copyWith({List<BasketModel>? basketList, double? allPrice, int? allCount, bool? allChecked}) {
    return BasketState(
      basketList: basketList ?? this.basketList,
      allCount: allCount ?? this.allCount,
      allChecked: allChecked ?? this.allChecked,
      allPrice: allPrice ?? this.allPrice,
    );
  }

  const BasketState({
    this.basketList,
    this.allChecked = false,
    required this.allPrice,
    required this.allCount,
  });
}