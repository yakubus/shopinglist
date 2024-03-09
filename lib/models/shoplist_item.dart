// ignore_for_file: public_member_api_docs, sort_constructors_first

class ShoplistItem {
  final String itemName;
  final String itemCount;
  final String shopName;
  final String category;
  final String event;
  final bool check;

  const ShoplistItem(
      {required this.itemName,
      this.itemCount = '',
      this.shopName = '',
      this.category = '',
      this.event = '',
      this.check = false});

  ShoplistItem copy(ShoplistItem shopList) {
    return ShoplistItem(
      itemName: shopList.itemName,
      itemCount: shopList.itemCount,
      shopName: shopList.shopName,
      category: shopList.category,
      event: shopList.event,
    );
  }
}
