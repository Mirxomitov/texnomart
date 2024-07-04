part of 'basket_bloc.dart';

abstract class BasketEvent {}

final class LoadBasketData extends BasketEvent {}

final class ChangeAllChecks extends BasketEvent {}

final class OnClickCheckBox extends BasketEvent {
  final bool isChecked;
  final int index;

  OnClickCheckBox({
    required this.isChecked,
    required this.index,
  });
}

/*
  all checked
  list basketdata box
  all price
  all count = basketList.length


* */