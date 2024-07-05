part of 'main_bloc.dart';

class MainState {
  final int bottomNavigationIndex;
  final CatalogMenu? catalogMenuData;
  final BasketModel? data;
  final int notificationCount;
  final Status status;

  factory MainState.initial() {
    return MainState(
      bottomNavigationIndex: 0,
      notificationCount: 0,
      status: Status.loading,
    );
  }

  MainState({
    required this.bottomNavigationIndex,
    this.catalogMenuData,
    this.data,
    required this.notificationCount,
    required this.status,
  });

  MainState copyWith({
    int? bottomNavigationIndex,
    CatalogMenu? catalogMenuUIData,
    BasketModel? data,
    int? notificationCount,
    Status? status,
  }) {
    return MainState(
      bottomNavigationIndex: bottomNavigationIndex ?? this.bottomNavigationIndex,
      catalogMenuData: catalogMenuUIData ?? catalogMenuData,
      data: data ?? this.data,
      notificationCount: notificationCount ?? this.notificationCount,
      status: status ?? this.status,
    );
  }

  @override
  String toString() => 'MainState(bottomNavigationIndex: $bottomNavigationIndex, catalogMenu: $catalogMenuData, data: $data, status: $status)';
}
