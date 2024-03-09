import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShoplistTile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Row(
        children: [
          ListTile(
            onTap: () => context.go('shoplist'),
            title: const Text('przykładowy tekst'),
          ),
          ListTile(
            onTap: () => context.go('shoplist'),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
