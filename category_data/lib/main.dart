import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import 'package:category_data/business/cubit_provider.dart';
import 'package:category_data/business/cubits/category_cubit/category_cubit.dart';
import 'package:category_data/business/cubits/record_cubit/record_cubit.dart';
import 'package:category_data/ui/routes/router.dart';

void main() async {
  await Hive.initFlutter();
  initializeCubit(Environment.prod);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryCubit>(
          create: (_) => GetIt.I.get<CategoryCubit>()..init(),
        ),
        BlocProvider<RecordCubit>(
          create: (_) => GetIt.I.get<RecordCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: router,
      ),
    );
  }
}
