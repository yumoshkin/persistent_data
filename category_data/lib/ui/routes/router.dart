import 'package:go_router/go_router.dart';

import 'package:category_data/ui/screens/error_screen.dart';
import 'package:category_data/ui/screens/category_form_screen.dart';
import 'package:category_data/ui/screens/category_list_screen.dart';
import 'package:category_data/ui/screens/record_form_screen.dart';
import 'package:category_data/ui/screens/record_list_screen.dart';
import 'package:category_data/ui/screens/record_view_screen.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CategoryListScreen(),
      routes: [
        GoRoute(
          path: 'category_form/:id',
          builder: (context, state) =>
              CategoryFormScreen(id: state.params['id']!),
        ),
        GoRoute(
          path: 'record/:categoryId',
          builder: (context, state) => RecordListScreen(
            categoryId: state.params['categoryId']!,
          ),
          routes: [
            GoRoute(
              path: 'record_form/:id/:catId',
              builder: (context, state) => RecordFormScreen(
                id: state.params['id']!,
                categoryId: state.params['catId']!,
              ),
            ),
            GoRoute(
              path: 'record_view/:id',
              builder: (context, state) => RecordViewScreen(
                id: state.params['id']!,
              ),
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(error: state.error!),
);
