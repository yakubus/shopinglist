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

  void removeItem(String itemName) {
    itemList.removeWhere((item) => item.itemName == itemName);
  }
}
