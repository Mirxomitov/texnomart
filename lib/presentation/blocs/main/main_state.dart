part of 'main_bloc.dart';

class MainState {
  final int bottomNavigationIndex;
  final CatalogMenu? catalogMenuData;

  factory MainState.initial() {
    return MainState(bottomNavigationIndex: 0);
  }

  MainState({
    required this.bottomNavigationIndex,
    this.catalogMenuData,
  });

  MainState copyWith({
    int? bottomNavigationIndex,
    CatalogMenu? catalogMenuUIData,
  }) {
    return MainState(
      bottomNavigationIndex: bottomNavigationIndex ?? this.bottomNavigationIndex,
      catalogMenuData: catalogMenuUIData ?? this.catalogMenuData,
    );
  }

  @override
  String toString() => 'MainState(bottomNavigationIndex: $bottomNavigationIndex, catalogMenu: $catalogMenuData)';
}
