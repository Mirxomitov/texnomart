part of 'profile_bloc.dart';

class ProfileState {
  final Status status;

  ProfileState({required this.status});

  factory ProfileState.initial() {
    return ProfileState(status: Status.loading);
  }

  ProfileState copyWith({Status? status}) {
    return ProfileState(
      status: status ?? this.status,
    );
  }
}
