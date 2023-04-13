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
import 'package:user_data/business/bank_card_cubit/bank_card_cubit.dart' as _i5;
import 'package:user_data/business/user_cubit/user_cubit.dart' as _i6;
import 'package:user_data/data/services/bank_card_service.dart' as _i3;
import 'package:user_data/data/services/user_service.dart' as _i4;

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
    gh.lazySingleton<_i3.BankCardService>(() => _i3.BankCardService());
    gh.lazySingleton<_i4.UserService>(() => _i4.UserService());
    gh.factory<_i5.BankCardCubit>(
        () => _i5.BankCardCubit(bankCardService: gh<_i3.BankCardService>()));
    gh.factory<_i6.UserCubit>(
        () => _i6.UserCubit(userService: gh<_i4.UserService>()));
    return this;
  }
}
