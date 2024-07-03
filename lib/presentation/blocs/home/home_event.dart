part of 'home_bloc.dart';

abstract class HomeEvent {}

// load all at once
final class LoadAllFromApi extends HomeEvent {}

final class LoadSliders extends HomeEvent {}

final class LoadSpecialCategories extends HomeEvent {}

final class LoadHitProducts extends HomeEvent {}
