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
  List<ShoplistItem> itemList = [];

  Shoplist(
      {required this.id,
      required this.listName,
      this.localList = true,
      this.privet = true,
      this.complited = false});

  addItem(ShoplistItem item) {
    itemList.add(item);
  }

  removeItem(String itemName) {
    for (int i = 0; i < itemList.length; i++) {
      if (itemList[i].itemName == itemName) {
        // ignore: list_remove_unrelated_type
        itemList.remove(i);
      }
    }
  }
}

class ShoplistColection extends Notifier<List<Shoplist>> {
  @override
  List<Shoplist> build() {
    List<Shoplist> list = [
      Shoplist(id: '1', listName: 'zakupy', localList: true)
    ];
    list[0].itemList.add(const ShoplistItem(
        itemName: 'bułki',
        category: 'pieczywo',
        itemCount: '3szt',
        shopName: 'Lidl'));
    return list;
  }

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
    Shoplist shoplist = Shoplist(id: 'abc123', listName: 'testName');
    ShoplistItem shopListItem1 = const ShoplistItem(
        itemName: 'ziemniaki',
        category: 'warzywa i owoce',
        itemCount: '2kg',
        shopName: 'Lidl');
    ShoplistItem shopListItem2 = const ShoplistItem(
        itemName: 'ryż',
        category: 'inne',
        itemCount: '1szt',
        shopName: 'Biedronka');
    shoplist.addItem(shopListItem1);
    shoplist.addItem(shopListItem2);
    return shoplist;
  }

  void updateList() {
    // ignore: avoid_print
    print('List is update');
  }

  void pullList() {
    // ignore: avoid_print
    print('List is pulled');
  }

  void addItem({required String id, required ShoplistItem item}) {
    state = [
      for (final shoplist in state)
        if (shoplist.id == id) shoplist.addItem(item)
    ];
  }

  void removeItem({required String id, required itemName}) {
    state = [
      for (final shoplist in state)
        if (shoplist.id == id) shoplist.removeItem(itemName)
    ];
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
