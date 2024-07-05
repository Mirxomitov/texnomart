import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../utils/status.dart';

part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(OrdersState.initial()) {
    on<OrdersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
