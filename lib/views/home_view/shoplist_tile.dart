// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/models/shoplist.dart';
import 'package:shopinglist/views/home_view/home_view.dart';

class ShoplistTile extends HookConsumerWidget {
  final Shoplist shoplist; // Dodaj pole shoplist

  const ShoplistTile({
    Key? key,
    required this.shoplist, // Dodaj parametr shoplist
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
        color: const Color.fromARGB(255, 45, 43, 43),
        child: Card(
          color: const Color.fromARGB(255, 45, 43, 43),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Colors.white), // Dodaj obramowanie
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () => context.go('/shoplist', extra: shoplist),
                  leading: const Icon(color: Colors.white54, Icons.list_alt),
                  title: Text(
                    shoplist.listName,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica Neue',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('USUŃ'),
                      onPressed: () => ref
                          .read(shopListProvider.notifier)
                          .removeList(shoplist),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
