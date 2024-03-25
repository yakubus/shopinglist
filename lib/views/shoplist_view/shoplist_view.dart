import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/models/shoplist.dart';
import 'package:shopinglist/models/shoplist_item.dart';
import 'package:shopinglist/views/footer.dart';
import 'package:shopinglist/views/shoplist_view/new_item.dart';
import 'package:shopinglist/views/shoplist_view/shoplist_item.dart';

import '../../style/style.dart';

class ShopListView extends HookConsumerWidget {
  final Shoplist list;
  const ShopListView({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<ShoplistItem> shopList = list.itemList;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                list.listName,
                style: headerTextStyle(),
              ),
            ),
            if (shopList.isEmpty)
              Text(
                'brak pozycji na liście',
                style: standardTextStyle(),
              )
            else
              Expanded(
                child: ListView.builder(
                  itemCount: shopList.length,
                  itemBuilder: (context, index) {
                    final ShoplistItem item = shopList[index];
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ItemView(
                        item: item,
                        listId: list.id,
                      ),
                    );
                  },
                ),
              ),
            NewItem(id: list.id),
            const FooterApp(),
          ],
        ),
      ),
    );
  }
}
