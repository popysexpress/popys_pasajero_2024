part of 'ClientHomeBloc.dart';

class ClientHomeState extends Equatable {
  //variables
  final int pageIndex;

  // contructor
  ClientHomeState({
    this.pageIndex = 0,
  });

  // copy with
  ClientHomeState copyWith({
    int? pageIndex,
  }) {
    return ClientHomeState(
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }

  //
  @override
  List<Object> get props => [pageIndex];
}
