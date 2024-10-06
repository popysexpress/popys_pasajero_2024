part of 'ClientHomeBloc.dart';

abstract class ClientHomeEvent {}

//evento para cambiar de pantallas
class ChangeDrawerPageEvent extends ClientHomeEvent {
  //variable
  final int pageIndex;

  ChangeDrawerPageEvent({
    required this.pageIndex,
  });
}

//evento para logout
class LogoutEvent extends ClientHomeEvent {}
