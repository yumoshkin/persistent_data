import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:user_data/business/cubit_provider.config.dart';

@InjectableInit()
void initializeCubit() => GetIt.I.init();
