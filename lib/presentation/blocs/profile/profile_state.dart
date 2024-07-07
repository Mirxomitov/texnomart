part of 'profile_bloc.dart';

class ProfileState {
  final Status status;
  final int favouriteCount;

  factory ProfileState.initial() {
    return ProfileState(status: Status.success, favouriteCount: HiveHelper.favourite.length);
  }

  ProfileState({required this.status, required this.favouriteCount});

  ProfileState copyWith({Status? status, int? favouriteCount}) {
    return ProfileState(status: status ?? this.status, favouriteCount: favouriteCount ?? this.favouriteCount);
  }
}
