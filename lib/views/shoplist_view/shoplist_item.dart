import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/models/shoplist_item.dart';
import 'package:shopinglist/style/style.dart';
import 'package:shopinglist/views/home_view/home_view.dart';

class ItemView extends HookConsumerWidget {
  const ItemView({
    super.key,
    required this.item,
    required this.listId,
  });
  final ShoplistItem item;
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: const Color.fromARGB(255, 45, 43, 43),
      child: Card(
          color: const Color.fromARGB(255, 45, 43, 43),
          child: Row(
            children: [
              Checkbox(
                tristate: item.check,
                value: false,
                onChanged: (bool? value) {},
              ),
              SizedBox(
                width: 200,
                child: Text(
                  item.itemName,
                  style: standardTextStyle(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 60,
                child: Text(
                  item.itemCount,
                  style: standardTextStyle(),
                ),
              ),
              IconButton(
                icon: const Icon(
                    color: Color.fromARGB(183, 235, 34, 34),
                    Icons.remove_circle),
                onPressed: () {
                  ref
                      .read(shopListProvider.notifier)
                      .removeItemFromList(listId, item.itemName);
                },
              ),
            ],
          )),
    );
  }
}
