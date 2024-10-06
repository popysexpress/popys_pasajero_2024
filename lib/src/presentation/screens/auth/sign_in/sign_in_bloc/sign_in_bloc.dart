// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:developer' as developer;
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:popys_pasajero_2024/src/domain/models/AuthResponse.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/SignInUseCase.dart';
import 'package:popys_pasajero_2024/src/domain/utils/Resource.dart';
import 'package:popys_pasajero_2024/src/presentation/utils/BlocFormItem.dart';

part 'sign_in_state.dart';
part 'sign_in_event.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  //instanciar Auth Use Cases
  AuthUseCases authUseCases;
  //variables
  final formKey = GlobalKey<FormState>();

  //cosntructor
  SignInBloc(this.authUseCases) : super(const SignInState()) {
    // evento para inicializar form key
    on<SignInInitEvent>((event, emit) async {
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
      // ejecurtar evento
      emit(state.copyWith(
        password: BlocFormItem(
            value: event.password.value,
            error: event.password.value.isEmpty
                ? 'Ingresa el password'
                : event.password.value.length < 6
                    ? 'Ingresa mínimo 6 caracteres'
                    : null),
        formKey: formKey,
      ));
    });

    // evento para boton submit
    on<FormSubmitEvent>((event, emit) async {
      // ejecutar evento
      print('Email: ${state.email.value}');
      print('Password: ${state.password.value}');

      //loading
      emit(state.copyWith(
        response: Loading(),
        formKey: formKey,
      ));
      // prueba para mosstrar loading
      //await Future.delayed(const Duration(seconds: 3));

      // instanciar el servicio
      // mostrar el resurce // [loading, succsess, error]
      Resource response = await authUseCases.signInUseCase
          .run(state.email.value, state.password.value);

      //evento para response
      emit(state.copyWith(
        response: response,
        formKey: formKey,
      ));
    });

    // evento para save data user session
    on<SaveUserSeasseonEvent>((event, emit) async {
      // ejecutar el evento
      await authUseCases.saveUserSessionUseCase.run(event.authResponse);
    });
  }
}
