// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:meal_order/core/client/client.dart' as _i3;
import 'package:meal_order/feature/app/presentation/bloc/app_bloc.dart' as _i4;
import 'package:meal_order/feature/home/data/repository/home_repository_impl.dart'
    as _i6;
import 'package:meal_order/feature/home/domain/repository/home_repository.dart'
    as _i5;
import 'package:meal_order/feature/home/domain/usecase/home_usecase.dart'
    as _i7;
import 'package:meal_order/feature/home/presentation/bloc/home_bloc.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.Api>(_i3.Api());
    gh.lazySingleton<_i4.AppBloc>(() => _i4.AppBloc());
    gh.factory<_i5.HomeRepository>(() => _i6.HomeRepositoryImpl(gh<_i3.Api>()));
    gh.singleton<_i7.HomeUseCase>(_i7.HomeUseCase(gh<_i5.HomeRepository>()));
    gh.singleton<_i8.HomeBloc>(_i8.HomeBloc(gh<_i5.HomeRepository>()));
    return this;
  }
}
