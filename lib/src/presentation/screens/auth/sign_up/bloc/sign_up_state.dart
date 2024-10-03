part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  //variables
  final BlocFormItem name;
  final BlocFormItem lastname;
  final BlocFormItem phone;
  final BlocFormItem email;
  final BlocFormItem password;
  final BlocFormItem confirmPassword;
  final GlobalKey<FormState>? formKey;

  //contructor
  const SignUpState({
    this.name = const BlocFormItem(error: 'Ingresa nombres'),
    this.lastname = const BlocFormItem(error: 'Ingresa apellidos'),
    this.phone = const BlocFormItem(error: 'Ingresa el teléfono'),
    this.email = const BlocFormItem(error: 'Ingresa el email'),
    this.password = const BlocFormItem(error: 'Ingresa la contraseña'),
    this.confirmPassword = const BlocFormItem(error: 'Confirmar la contraseña'),
    this.formKey,
  });

  //copy with
  SignUpState copyWith({
    BlocFormItem? name,
    BlocFormItem? lastname,
    BlocFormItem? phone,
    BlocFormItem? email,
    BlocFormItem? password,
    BlocFormItem? confirmPassword,
    GlobalKey<FormState>? formKey,
  }) {
    return SignUpState(
      name: name ?? this.name,
      lastname: lastname ?? this.lastname,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      formKey: formKey,
    );
  }

  //variables que cambiaran de estado
  @override
  List<Object> get props => [
        name,
        lastname,
        phone,
        email,
        password,
        confirmPassword,
      ];
}
