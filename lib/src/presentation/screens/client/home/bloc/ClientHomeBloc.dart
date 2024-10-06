import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popys_pasajero_2024/src/domain/useCases/auth/AuthUseCases.dart';

part 'ClientHomeState.dart';
part 'ClientHomeEvent.dart';

class ClientHomeBloc extends Bloc<ClientHomeEvent, ClientHomeState> {
  // inyectaos variables
  AuthUseCases authUseCases;
  //cosntructor
  ClientHomeBloc(this.authUseCases) : super(ClientHomeState()) {
    //evento cambair de paginas
    on<ChangeDrawerPageEvent>((event, emit) {
      // emitir cambio de estado
      emit(state.copyWith(
        pageIndex: event.pageIndex,
      ));
    });

    // evento para logout
    on<LogoutEvent>((event, emit) async {
      // ejecutar el metodo
      await authUseCases.logoutUseCase.run();
    });
  }
}
