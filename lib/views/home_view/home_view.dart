import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/models/shoplist.dart';
import 'package:shopinglist/models/shoplist_colection.dart';

import 'package:shopinglist/views/footer.dart';

import 'package:shopinglist/views/home_view/shoplist_tile.dart';
import 'package:shopinglist/views/title.dart';

final shopListProvider =
    NotifierProvider<ShoplistColection, List<Shoplist>>(ShoplistColection.new);

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lists = ref.watch(shopListProvider);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            const TitleApp(),
            if (lists.isEmpty)
              const Text('Nie dodałeś żadnej listy')
            else
              Expanded(
                child: ListView.builder(
                  itemCount: lists.length,
                  itemBuilder: (ref, index) {
                    final shoplist = lists[index];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ShoplistTile(
                        shoplist: shoplist,
                      ),
                    );
                  },
                ),
              ),
            ElevatedButton(
              child: const Text('dodaj listę'),
              onPressed: () => context.go('/newList'),
            ),
            const FooterApp(),
          ],
        ),
      ),
    );
  }
}
