import 'package:hive/hive.dart';

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
  final bool isInBasket;

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
}
