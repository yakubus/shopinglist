import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '/views/get_list_view.dart';
import '../views/home_view/home_view.dart';
import '/views/shoplist_view.dart';

final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'shoplist',
          builder: (BuildContext context, GoRouterState state) {
            return const ShopListView();
          },
        ),
        GoRoute(
          path: 'getlist',
          builder: (BuildContext context, GoRouterState state) {
            return const GetListView();
          },
        ),
      ],
    ),
  ],
);
