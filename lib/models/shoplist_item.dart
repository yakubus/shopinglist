// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

class ShoplistItem {
  final String itemName;
  final String itemCount;
  final String shopName;
  final String category;
  final String event;

  const ShoplistItem({
    required this.itemName,
    this.itemCount = '',
    this.shopName = '',
    this.category = '',
    this.event = '',
  });
}
