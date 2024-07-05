part of 'catalog_bloc.dart';

class CatalogState {
  final CatalogMenu? catalogMenuData;
  final Status status;

  const CatalogState({this.catalogMenuData, required this.status});

  factory CatalogState.initial() {
    return const CatalogState(status: Status.loading);
  }

  CatalogState copyWith({
    CatalogMenu? catalogMenuData,
    Status? status,
  }) {
    return CatalogState(
      catalogMenuData: catalogMenuData ?? this.catalogMenuData,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'CatalogState(catalogMenuData: $catalogMenuData, status: $status)';
  }
}
