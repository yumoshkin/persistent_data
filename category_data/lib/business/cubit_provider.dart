import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:category_data/business/cubit_provider.config.dart';

@InjectableInit()
void initializeCubit(String env) => GetIt.I.init(environment: env);
