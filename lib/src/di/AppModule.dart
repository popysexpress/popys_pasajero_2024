import 'package:injectable/injectable.dart';
import 'package:popys_pasajero_2024/src/data/dataSource/remote/services/auth_service.dart';
import 'package:popys_pasajero_2024/src/data/repository/AuthRepositoryImpl.dart';
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/SignInUseCase.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/SinUpUseCase.dart';

@module
abstract class AppModule {
  // instanciar para ser utilizado en cualquier clase

  //auth services
  @injectable
  AuthService get authService => AuthService();

  // Auth Repository
  @injectable
  AuthRepository get authRepository => AuthRepositoryImpl(authService);

  // Auth cases
  @injectable
  AuthUseCases get authUseCases => AuthUseCases(
        signInUseCase: SignInUseCase(authRepository),
        signUpUseCase: SignUpUseCase(authRepository),
      );
}
