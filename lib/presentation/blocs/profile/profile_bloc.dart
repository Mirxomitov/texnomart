import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/local/hive/hive_helper.dart';

import '../../../utils/status.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<LoadProfileData>((event, emit) {
      final length = HiveHelper.favourite.length;
      print('LoadProfileData $length');
      emit(state.copyWith(favouriteCount: length));
    });
  }
}
