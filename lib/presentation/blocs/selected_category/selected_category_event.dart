part of 'selected_category_bloc.dart';

abstract class SelectedCategoryEvent {}

final class LoadChipsEvent extends SelectedCategoryEvent {}

final class LoadAllProductEvent extends SelectedCategoryEvent {}

final class LoadAllEvent extends SelectedCategoryEvent {}