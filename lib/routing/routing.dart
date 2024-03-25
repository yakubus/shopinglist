import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:shopinglist/models/shoplist.dart';
import 'package:shopinglist/views/add_new_list_view.dart';
import '/views/get_list_view.dart';
import '../views/home_view/home_view.dart';
import '../views/shoplist_view/shoplist_view.dart';

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
              Shoplist list = state.extra as Shoplist;
              return ShopListView(list: list);
            }),
        GoRoute(
          path: 'getlist',
          builder: (BuildContext context, GoRouterState state) {
            return const GetListView();
          },
        ),
        GoRoute(
          path: 'newList',
          builder: (BuildContext context, GoRouterState state) {
            return const AddNewListView();
          },
        ),
      ],
    ),
  ],
);
