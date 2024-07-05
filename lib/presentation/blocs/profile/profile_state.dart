part of 'profile_bloc.dart';

class ProfileState {
  final Status status;
  final List<FavouriteModel> favouriteProducts;

  factory ProfileState.initial() {
    return ProfileState(status: Status.loading, favouriteProducts: HiveHelper.favourite.values.toList());
  }

  ProfileState({required this.status, required this.favouriteProducts});

  ProfileState copyWith({Status? status, List<FavouriteModel>? favouriteProducts}) {
    return ProfileState(
      status: status ?? this.status, favouriteProducts: favouriteProducts ?? this.favouriteProducts,
    );
  }
}
