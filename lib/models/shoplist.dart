// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:shopinglist/models/shoplist_item.dart';

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
