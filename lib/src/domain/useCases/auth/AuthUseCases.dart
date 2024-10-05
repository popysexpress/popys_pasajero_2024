import 'package:popys_pasajero_2024/src/domain/useCases/auth/SignInUseCase.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/SinUpUseCase.dart';

class AuthUseCases {
  // variables
  SignInUseCase signInUseCase;
  SignUpUseCase signUpUseCase;

  //constructor
  AuthUseCases({
    required this.signInUseCase,
    required this.signUpUseCase,
  });
}
