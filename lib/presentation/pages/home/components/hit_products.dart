import 'package:flutter/cupertino.dart';
import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/data/source/local/hive/hive_helper.dart';

import '../../../../data/model/basket_model/basket_model.dart';
import 'hit_product_item.dart';

class HitProducts extends StatelessWidget {
  final HitProductsUIModel hitProducts;

  const HitProducts({super.key, required this.hitProducts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, index) {
        return const SizedBox(width: 12);
      },
      padding: const EdgeInsets.only(left: 12),
      itemCount: hitProducts.data.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) {
        return HitProductItem(
          data: hitProducts.data[index],
        );
      },
    );
  }
}

