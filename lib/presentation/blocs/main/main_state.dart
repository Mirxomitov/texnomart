part of 'main_bloc.dart';

class MainState {
  final int bottomNavigationIndex;

  final CatalogMenuUIModel? catalogMenuUIData;

  factory MainState.initial() {
    return MainState(bottomNavigationIndex: 0);
  }

  MainState({
    required this.bottomNavigationIndex,
    this.catalogMenuUIData,
  });

  MainState copyWith({
    int? bottomNavigationIndex,
    CatalogMenuUIModel? catalogMenuUIData,
  }) {
    return MainState(
      bottomNavigationIndex: bottomNavigationIndex ?? this.bottomNavigationIndex,
      catalogMenuUIData: catalogMenuUIData ?? this.catalogMenuUIData,
    );
  }

  @override
  String toString() => 'MainState(bottomNavigationIndex: $bottomNavigationIndex, catalogMenuUIData: $catalogMenuUIData)';
}
