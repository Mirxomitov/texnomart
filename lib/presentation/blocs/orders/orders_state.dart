part of 'orders_bloc.dart';

class OrdersState {
  final Status status;

  OrdersState({required this.status});

  factory OrdersState.initial() {
    return OrdersState(
      status: Status.loading,
    );
  }

  OrdersState copyWith({
    Status? status,
  }) {
    return OrdersState(
      status: status ?? this.status,
    );
  }
}
