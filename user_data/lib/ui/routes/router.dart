import 'package:go_router/go_router.dart';

import 'package:user_data/ui/screens/bank_card_form_screen.dart';
import 'package:user_data/ui/screens/error_screen.dart';
import 'package:user_data/ui/screens/user_form_screen.dart';
import 'package:user_data/ui/screens/user_screen.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const UserScreen(),
      routes: [
        GoRoute(
          path: 'user_form/:id',
          builder: (context, state) => UserFormScreen(id: state.params['id']!),
        ),
        GoRoute(
          path: 'bank_card_form/:userId',
          builder: (context, state) =>
              BankCardFormScreen(userId: state.params['userId']!),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(error: state.error!),
);
