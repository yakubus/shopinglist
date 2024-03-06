import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:shopinglist/views/get_list_view.dart';
import 'package:shopinglist/views/home_view.dart';
import 'package:shopinglist/views/shoplist_view.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/shoplist',
          builder: (BuildContext context, GoRouterState state) {
            return const ShopListView();
          },
        ),
        GoRoute(
          path: '/getlist',
          builder: (BuildContext context, GoRouterState state) {
            return const GetListView();
          },
        ),
      ],
    ),
  ],
);
