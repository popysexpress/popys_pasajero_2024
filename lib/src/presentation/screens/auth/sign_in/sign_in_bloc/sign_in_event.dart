part of 'sign_in_bloc.dart';

//clase principal
abstract class SignInEvent {}

//evento para inicializar el formulario
class SignInInitEvent extends SignInEvent {}

//eventos
class EmailChangedEvent extends SignInEvent {
  //definimos la variable
  final BlocFormItem email;

  //creamos el constructor
  EmailChangedEvent({
    required this.email,
  });
}

class PasswordChangedEvent extends SignInEvent {
  //definimos la variable
  final BlocFormItem password;

  //creamos el constructor
  PasswordChangedEvent({
    required this.password,
  });
}

//evento para enviar el formulario
class FormSubmitEvent extends SignInEvent {}
