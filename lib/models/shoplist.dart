// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopinglist/models/shoplist_item.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class Shoplist {
  final String id;
  final String listName;
  final bool localList;
  final bool privet;
  final bool complited;
  ShoplistItems shoplist = ShoplistItems();

  Shoplist(
      {required this.id,
      required this.listName,
      this.localList = true,
      this.privet = true,
      this.complited = false});
}

class ShoplistColection extends Notifier<List<Shoplist>> {
  @override
  List<Shoplist> build() => [];

  void newList(String listName) {
    state = [
      ...state,
      Shoplist(
        id: _uuid.v4(),
        listName: listName,
      ),
    ];
  }

  void getList(String id) {
    Shoplist getingList = mockShopList(id);

    state = [
      ...state,
      Shoplist(
        id: getingList.id,
        listName: getingList.listName,
      ),
    ];
  }

  Shoplist mockShopList(String id) {
    return Shoplist(id: 'abc123', listName: 'testName');
  }

  void updateListId() {
    print('List is update');
  }

  void edit({required String id, required String description}) {
    state = [
      for (final shoplist in state)
        if (shoplist.id == id)
          Shoplist(
            id: shoplist.id,
            listName: shoplist.listName,
            privet: shoplist.privet,
          )
        else
          shoplist,
    ];
  }
}
