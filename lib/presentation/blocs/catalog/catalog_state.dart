part of 'catalog_bloc.dart';

class CatalogState {
  final CatalogMenu? catalogMenuData;

  const CatalogState({this.catalogMenuData});

  factory CatalogState.initial() {
    return const CatalogState();
  }

  CatalogState copyWith({CatalogMenu? catalogMenuData}) {
    return CatalogState(catalogMenuData: catalogMenuData ?? this.catalogMenuData);
  }

  @override
  String toString() {
    return 'CatalogState(catalogMenuData: $catalogMenuData)';
  }
}
