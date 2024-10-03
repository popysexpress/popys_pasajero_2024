import 'dart:async';
import 'dart:developer' as developer;
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/utils/BlocFormItem.dart';

part 'sign_in_state.dart';
part 'sign_in_event.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  //variables
  final formKey = GlobalKey<FormState>();

  //cosntructor
  SignInBloc() : super(SignInState()) {
    // evento para inicializar form key
    on<SignInInitEvent>((event, emit) {
      // ejecutar evento
      emit(state.copyWith(
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
    on<FormSubmitEvent>((event, emit) {
      // ejecutar evento
      print('Email: ${state.email.value}');
      print('Password: ${state.password.value}');
    });
  }
}
