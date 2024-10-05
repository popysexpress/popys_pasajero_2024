part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  //declaracion de variables
  final BlocFormItem email;
  final BlocFormItem password;
  final Resource? response;
  final GlobalKey<FormState>? formKey;

  //constructor
  const SignInState({
    this.email = const BlocFormItem(error: 'Ingresa el email'),
    this.password = const BlocFormItem(error: 'Ingresa el password'),
    this.formKey,
    this.response,
  });

  // Copy With
  SignInState copyWith({
    BlocFormItem? email,
    BlocFormItem? password,
    Resource? response,
    GlobalKey<FormState>? formKey,
  }) {
    return SignInState(
        email: email ?? this.email,
        password: password ?? this.password,
        response: response,
        formKey: formKey);
  }

  //variables que cambiaran de estado
  @override
  List<Object?> get props => [email, password, response];
}
