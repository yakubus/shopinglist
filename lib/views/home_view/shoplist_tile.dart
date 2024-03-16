// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShoplistTile extends HookConsumerWidget {
  final String listName;

  const ShoplistTile({
    super.key,
    required this.listName,
  });

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
                  leading: const Icon(color: Colors.white54, Icons.list_alt),
                  title: Text(
                    listName,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica Neue',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
