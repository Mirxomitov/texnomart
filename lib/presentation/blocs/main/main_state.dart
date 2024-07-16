part of 'main_bloc.dart';

class MainState {
  final CupertinoTabController controller;
  final int notificationCount;
  final Status status;

  factory MainState.initial() {
    return MainState(
      controller: CupertinoTabController()..index = 0,
      notificationCount: 0,
      status: Status.success,
    );
  }

  MainState({
    required this.notificationCount,
    required this.status,
    required this.controller,
  });

  MainState copyWith({
    CupertinoTabController? controller,
    int? notificationCount,
    Status? status,
  }) {
    return MainState(
      controller: controller ?? this.controller,
      notificationCount: notificationCount ?? this.notificationCount,
      status: status ?? this.status,
    );
  }

  @override
  String toString() => 'MainState(bottomNavigationIndex: ${controller.index}, status: $status)';
}
