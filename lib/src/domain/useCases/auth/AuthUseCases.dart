import 'package:popys_pasajero_2024/src/domain/useCases/auth/GetUserSessionUseCase.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/LogoutUsecase.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/SaveUserSessionUseCase.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/SignInUseCase.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/SinUpUseCase.dart';

class AuthUseCases {
  // variables
  SignInUseCase signInUseCase;
  SignUpUseCase signUpUseCase;
  SaveUserSessionUseCase saveUserSessionUseCase;
  GetUserSessionUseCase getUserSessionUseCase;
  LogoutUseCase logoutUseCase;

  //constructor
  AuthUseCases({
    required this.signInUseCase,
    required this.signUpUseCase,
    required this.saveUserSessionUseCase,
    required this.getUserSessionUseCase,
    required this.logoutUseCase,
  });
}
