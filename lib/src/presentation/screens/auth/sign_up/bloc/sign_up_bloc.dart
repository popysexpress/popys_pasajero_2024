// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/models/user.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';

import 'package:popys_pasajero_2024/src/presentation/utils/BlocFormItem.dart';

part 'sign_up_state.dart';
part 'sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  // inyectar caso de usos
  AuthUseCases authUseCases;

  //variables
  final formKey = GlobalKey<FormState>();

  SignUpBloc(this.authUseCases) : super(const SignUpState()) {
    // evento para inicializar form key
    on<SignUpInitEvent>((event, emit) async {
      // verificar si la data de user session guardo
      AuthResponse? authResponse =
          await authUseCases.getUserSessionUseCase.run();
      // imprimir en consola
      print('Auth Response Seesion: ${authResponse?.toJson()}');
      // ejecutar evento
      emit(state.copyWith(
        formKey: formKey,
      ));

      //validar si existe session
      if (authResponse != null) {
        //
        emit(state.copyWith(
          response: Success(authResponse),
          formKey: formKey,
        ));
      }
    });

    // evento para campo nombre
    on<NameChangedEvent>((event, emit) {
      //ejecutar evento
      emit(state.copyWith(
        name: BlocFormItem(
          value: event.name.value,
          error: event.name.value.isEmpty ? 'Ingresar nombres' : null,
        ),
        formKey: formKey,
      ));
    });

    // evento para campo apellido
    on<LastnameChangedEvent>((event, emit) {
      //ejecutar evento
      emit(state.copyWith(
        lastname: BlocFormItem(
          value: event.lastname.value,
          error: event.lastname.value.isEmpty ? 'Ingresar apellidos' : null,
        ),
        formKey: formKey,
      ));
    });

    //

    // evento para campo phone
    on<PhoneChangedEvent>((event, emit) {
      //ejecutar evento
      emit(state.copyWith(
        phone: BlocFormItem(
          value: event.phone.value,
          error: event.phone.value.isEmpty ? 'Ingresa el teléfono' : null,
        ),
        formKey: formKey,
      ));
    });

    // evento para campo email
    on<EmailChangedEvent>((event, emit) {
      //ejecutar evento
      emit(state.copyWith(
        email: BlocFormItem(
          value: event.email.value,
          error: event.email.value.isEmpty ? 'Ingresa el email' : null,
        ),
        formKey: formKey,
      ));
    });

    // evento para campo password
    on<PasswordChangedEvent>((event, emit) {
      // ejecutar evento
      emit(
        state.copyWith(
          password: BlocFormItem(
            value: event.password.value,
            error: event.password.value.isEmpty
                ? 'Ingresa la contraseña'
                : event.password.value.length < 6
                    ? 'Ingresa mínimo 6 caracteres'
                    : null,
          ),
          formKey: formKey,
        ),
      );
    });

    // evento para campo confirm password
    on<PasswordConfirmChangedEvent>((event, emit) {
      // ejecutar evento
      emit(
        state.copyWith(
          confirmPassword: BlocFormItem(
            value: event.confirmPassword.value,
            error: event.confirmPassword.value.isEmpty
                ? 'Confirma la contraseñas'
                : event.confirmPassword.value.length < 6
                    ? 'Ingresa mínimo 6 caracteres'
                    : event.confirmPassword.value != state.password.value
                        ? 'Las contraseñas no coinciden'
                        : null,
          ),
          formKey: formKey,
        ),
      );
    });

    // evento para boton submit
    on<FormSubmitEvent>((event, emit) async {
      // ejecutar evento
      print('Name: ${state.name.value}');
      print('Lastname: ${state.lastname.value}');
      print('Phone: ${state.phone.value}');
      print('Email: ${state.email.value}');
      print('Password: ${state.password.value}');
      print('Password Confirm: ${state.confirmPassword.value}');

      // emitir nuevo estado
      emit(
        state.copyWith(
          response: Loading(),
          formKey: formKey,
        ),
      );

      // enviamos la peticion
      Resource response = await authUseCases.signUpUseCase.run(state.toUser());

      // emitir nuevo cambio de estado
      emit(
        state.copyWith(
          response: response,
          formKey: formKey,
        ),
      );
    });

    // evento para limpiar formulario
    on<FormResetEvent>((event, emit) {
      state.formKey?.currentState?.reset();
    });

    // evento para save data user session
    on<SaveUserSeasseonEvent>((event, emit) async {
      // ejecutar el evento
      await authUseCases.saveUserSessionUseCase.run(event.authResponse);
    });
  }
}
