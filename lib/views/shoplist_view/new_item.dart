import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/style/style.dart';
import 'package:shopinglist/views/home_view/home_view.dart';

class NewItem extends HookConsumerWidget {
  final String id;
  const NewItem({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController itemNameTFControler =
        useTextEditingController();
    final TextEditingController countTFControler = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.redAccent),
              border: UnderlineInputBorder(),
              labelText: 'nazwa',
            ),
            controller: itemNameTFControler,
            style: inputTextStyle(),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintStyle: hintTextStyle(),
              border: const UnderlineInputBorder(),
              labelText: 'ilość',
            ),
            controller: countTFControler,
            style: inputTextStyle(),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          icon: const Icon(
              size: 40,
              color: Color.fromARGB(183, 11, 112, 33),
              Icons.add_circle),
          onPressed: () {
            ref.read(shopListProvider.notifier).addItem(
                id: id,
                itemName: itemNameTFControler.text,
                counter: countTFControler.text);
          },
        )
      ]),
    );
  }
}
