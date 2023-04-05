import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_storage/ui/screens/home_screen.dart';

import 'package:image_storage/business/cubit_provider.dart';
import 'package:image_storage/business/image_cubit/image_cubit.dart';

void main() async {
  initializeCubit();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImageCubit>(
      create: (_) => GetIt.I.get<ImageCubit>()..init(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
