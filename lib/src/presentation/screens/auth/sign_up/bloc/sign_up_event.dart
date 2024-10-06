part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

//evento para inicializar el formulario
class SignUpInitEvent extends SignUpEvent {}

//eventos

//nombres
class NameChangedEvent extends SignUpEvent {
  //definimos la variable
  final BlocFormItem name;

  //creamos el constructor
  NameChangedEvent({
    required this.name,
  });
}

//apellidos
class LastnameChangedEvent extends SignUpEvent {
  //definimos la variable
  final BlocFormItem lastname;

  //creamos el constructor
  LastnameChangedEvent({
    required this.lastname,
  });
}

//phone
class PhoneChangedEvent extends SignUpEvent {
  //definimos la variable
  final BlocFormItem phone;

  //creamos el constructor
  PhoneChangedEvent({
    required this.phone,
  });
}

//email
class EmailChangedEvent extends SignUpEvent {
  //definimos la variable
  final BlocFormItem email;

  //creamos el constructor
  EmailChangedEvent({
    required this.email,
  });
}

//password
class PasswordChangedEvent extends SignUpEvent {
  //definimos la variable
  final BlocFormItem password;

  //creamos el constructor
  PasswordChangedEvent({
    required this.password,
  });
}

//Confirm password
class PasswordConfirmChangedEvent extends SignUpEvent {
  //definimos la variable
  final BlocFormItem confirmPassword;

  //creamos el constructor
  PasswordConfirmChangedEvent({
    required this.confirmPassword,
  });
}

//evento para enviar el formulario
class FormSubmitEvent extends SignUpEvent {}

//evento para reiniciar forumulario
class FormResetEvent extends SignUpEvent {}

// evento para guardar data user session
class SaveUserSeasseonEvent extends SignUpEvent {
  //
  final AuthResponse authResponse;

  // constructor
  SaveUserSeasseonEvent({
    required this.authResponse,
  });
}
