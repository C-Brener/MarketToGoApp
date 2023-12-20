class ProductModel {
  String name;
  double price;
  double salePrice;
  double retailPrice;
  String description;
  String market;
  String category;

  ProductModel(
      {required this.name,
      required this.price,
      required this.salePrice,
      required this.retailPrice,
      required this.description,
      required this.category,
      required this.market});

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
        name: map['name'],
        price: map['price'].toDouble(),
        salePrice: 5.0,
        retailPrice: 5.0,
        description: map['name'],
        category: "arrorz",
        market: map['market']);
  }
}
