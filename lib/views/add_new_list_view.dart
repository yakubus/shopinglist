import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/views/footer.dart';
import 'package:shopinglist/views/home_view/home_view.dart';

import '../style/style.dart';

class AddNewListView extends HookConsumerWidget {
  const AddNewListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController textController = useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'nazwa listy',
                      style: standardTextStyle(),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      controller: textController,
                      style: inputTextStyle(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 108, 104, 104)),
                      child: Text(
                        'dodaj',
                        style: standardTextStyle(),
                      ),
                      onPressed: () {
                        ref
                            .read(shopListProvider.notifier)
                            .newList(textController.text);
                        context.go('/');
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 108, 104, 104)),
                      child: Text(
                        'anuluj',
                        style: standardTextStyle(),
                      ),
                      onPressed: () {
                        context.go('/');
                      },
                    ),
                  ),
                ],
              ),
              const FooterApp(),
            ],
          ),
        ),
      ),
    );
  }
}
