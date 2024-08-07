import 'package:hive/hive.dart';
import 'package:texnomart/data/model/favourite_model/favourite_model.dart';

part 'basket_model.g.dart';

@HiveType(typeId: 1)
class BasketModel extends HiveObject {
  @HiveField(0)
  final String productId;
  @HiveField(1)
  final String name;
  @HiveField(2)
  double price;
  @HiveField(3)
  String image;
  @HiveField(4)
  int count;
  @HiveField(5)
  bool isChecked;
  @HiveField(6)
  bool isFavourite;

  BasketModel({
    required this.productId,
    required this.name,
    required this.price,
    required this.image,
    required this.count,
    required this.isChecked,
    required this.isFavourite,
  });

  @override
  String toString() {
    return 'BasketModel{productId: $productId, name: $name, price: $price, image: $image, count: $count, isChecked: $isChecked, isFavourite: $isFavourite}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BasketModel &&
        other.productId == productId &&
        other.name == name &&
        other.price == price &&
        other.image == image &&
        other.count == count &&
        other.isChecked == isChecked &&
        other.isFavourite == isFavourite;
  }

  @override
  int get hashCode {
    return productId.hashCode ^ name.hashCode ^ price.hashCode ^ image.hashCode ^ count.hashCode ^ isChecked.hashCode ^ isFavourite.hashCode;
  }

  FavouriteModel toFavouriteModel(bool isInBasket) {
    return FavouriteModel(
      productId: int.parse(productId),
      name: name,
      price: price,
      image: image,
      isInBasket: isInBasket,
    );
  }

  BasketModel copy({
    String? productId,
    String? name,
    double? price,
    String? image,
    int? count,
    bool? isChecked,
    bool? isFavourite,
  }) =>
      BasketModel(
        productId: productId ?? this.productId,
        name: name ?? this.name,
        price: price ?? this.price,
        image: image ?? this.image,
        count: count ?? this.count,
        isChecked: isChecked ?? this.isChecked,
        isFavourite: isFavourite ?? this.isFavourite,
      );
}
