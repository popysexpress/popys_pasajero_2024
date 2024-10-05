// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:popys_pasajero_2024/src/data/dataSource/remote/services/auth_service.dart'
    as _i710;
import 'package:popys_pasajero_2024/src/di/AppModule.dart' as _i99;
import 'package:popys_pasajero_2024/src/domain/repository/AuthRepository.dart'
    as _i654;
import 'package:popys_pasajero_2024/src/domain/useCases/auth/AuthUseCases.dart'
    as _i83;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i710.AuthService>(() => appModule.authService);
    gh.factory<_i654.AuthRepository>(() => appModule.authRepository);
    gh.factory<_i83.AuthUseCases>(() => appModule.authUseCases);
    return this;
  }
}

class _$AppModule extends _i99.AppModule {}
