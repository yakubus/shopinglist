import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/views/footer.dart';

class AddNewListView extends HookConsumerWidget {
  const AddNewListView({super.key});

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
                  const Expanded(
                    child: Text('nazwa listy',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica Neue',
                        )),
                  ),
                  Expanded(
                    child: TextField(
                        autofocus: true,
                        controller: textController,
                        style: const TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                          fontFamily: 'Helvetica Neue',
                        )),
                  ),
                  SizedBox(
                    width: 20,
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
