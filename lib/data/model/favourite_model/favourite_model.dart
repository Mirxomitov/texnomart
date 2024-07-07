import 'package:hive/hive.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';

part 'favourite_model.g.dart';

@HiveType(typeId: 2)
class FavouriteModel extends HiveObject {
  @HiveField(0)
  final int productId;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final String image;
  @HiveField(4)
  bool isInBasket;

  FavouriteModel({
    required this.productId,
    required this.name,
    required this.price,
    required this.image,
    required this.isInBasket,
  });

  @override
  String toString() {
    return 'FavouriteModel{productId: $productId, name: $name, price: $price, image: $image, isInBasket: $isInBasket, }';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FavouriteModel &&
        other.productId == productId &&
        other.name == name &&
        other.price == price &&
        other.image == image &&
        other.isInBasket == isInBasket;
    }

  @override
  int get hashCode {
    return productId.hashCode ^ name.hashCode ^ price.hashCode ^ image.hashCode ^ isInBasket.hashCode ;
  }

  static BasketModel toBasketModel(FavouriteModel data) {
    return BasketModel(
      productId: data.productId.toString(),
      name: data.name,
      price: data.price,
      image: data.image,
      count: 1,
      isChecked: true,
      isFavourite: true,
    );
  }

  FavouriteModel copy({
    int? productId,
    String? name,
    double? price,
    String? image,
    bool? isInBasket,
  }) {
    return FavouriteModel(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      price: price ?? this.price,
      image: image ?? this.image,
      isInBasket: isInBasket ?? this.isInBasket,
    );
  }

  BasketModel toBasketData() {
    return BasketModel(
      productId: productId.toString(),
      name: name,
      price: price,
      image: image,
      count: 1,
      isChecked: true,
      isFavourite: true,
    );
  }
}
