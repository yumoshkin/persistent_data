// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:category_data/business/cubits/category_cubit/category_cubit.dart'
    as _i9;
import 'package:category_data/business/cubits/record_cubit/record_cubit.dart'
    as _i10;
import 'package:category_data/data/services/category_service/category_service.dart'
    as _i3;
import 'package:category_data/data/services/category_service/category_service_api.dart'
    as _i5;
import 'package:category_data/data/services/category_service/category_service_mock.dart'
    as _i4;
import 'package:category_data/data/services/record_service/record_service.dart'
    as _i6;
import 'package:category_data/data/services/record_service/record_service_api.dart'
    as _i7;
import 'package:category_data/data/services/record_service/record_service_mock.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _dev = 'dev';
const String _prod = 'prod';

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
    gh.lazySingleton<_i3.CategoryService>(
      () => _i4.CategoryServiceMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i3.CategoryService>(
      () => _i5.CategoryServiceApi(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i6.RecordService>(
      () => _i7.RecordServiceApi(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i6.RecordService>(
      () => _i8.RecordServiceMock(),
      registerFor: {_dev},
    );
    gh.factory<_i9.CategoryCubit>(
        () => _i9.CategoryCubit(categoryService: gh<_i3.CategoryService>()));
    gh.factory<_i10.RecordCubit>(
        () => _i10.RecordCubit(recordService: gh<_i6.RecordService>()));
    return this;
  }
}
