import 'package:hive/hive.dart';

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

}
