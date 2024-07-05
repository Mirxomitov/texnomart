import 'package:hive/hive.dart';

part 'favourite_model.g.dart';

@HiveType(typeId: 2)
class FavouriteModel extends HiveObject {
  @HiveField(0)
  final int productId;

  FavouriteModel({required this.productId});

  @override
  String toString() {
    return 'FavouriteModel(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FavouriteModel && other.productId == productId;
  }

  @override
  int get hashCode {
    return productId.hashCode;
  }
}
