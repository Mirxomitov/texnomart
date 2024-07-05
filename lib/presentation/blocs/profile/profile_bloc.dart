import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../utils/status.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
