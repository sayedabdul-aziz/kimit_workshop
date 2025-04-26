import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit_workshop/features/auth/domain/use_cases/login_use_case.dart';
import 'package:kimit_workshop/features/auth/presentation/cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  final LoginUseCase loginUseCase;
  AuthCubit({required this.loginUseCase}) : super(AuthInitialState());

  login({required String email, required String password}) async {
    emit(AuthLoadingState());
    var result = await loginUseCase.login(email, password);
    result.fold((l) {
      emit(AuthErrorState(l.message));
    }, (r) {
      // Save the user data in shared preferences or any other storage
      emit(AuthSuccessState());
    });
  }
}
