import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:user_data/business/bank_card_cubit/bank_card_cubit.dart';
import 'package:user_data/business/cubit_provider.dart';
import 'package:user_data/business/user_cubit/user_cubit.dart';
import 'package:user_data/ui/routes/router.dart';

void main() async {
  initializeCubit();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BankCardCubit>(
          create: (_) => GetIt.I.get<BankCardCubit>()..init(),
        ),
        BlocProvider<UserCubit>(
          create: (_) => GetIt.I.get<UserCubit>()..init(),
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
