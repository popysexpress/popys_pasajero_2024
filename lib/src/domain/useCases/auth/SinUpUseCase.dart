import 'package:popys_pasajero_2024/src/domain/models/user.dart';
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart';

class SignUpUseCase {
  //instanciar repository
  AuthRepository repository;

  //constructor aplicando inyeccion de dependencias
  SignUpUseCase(this.repository);

  // ejecutar
  run(User user) => repository.register(user);
}
