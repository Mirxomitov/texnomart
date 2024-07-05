import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/presentation/blocs/product_details/product_details_bloc.dart';
import 'package:texnomart/presentation/pages/product_details/product_details.dart';
import 'package:texnomart/utils/commons.dart';
import 'package:texnomart/utils/to_value.dart';

import '../../../../data/model/favourite_model/favourite_model.dart';
import '../../../../data/source/local/hive/hive_helper.dart';

class HitProductItem extends StatefulWidget {
  final HitProductsModelData data;

  HitProductItem({super.key, required this.data});

  @override
  State<HitProductItem> createState() => _HitProductItemState();
}

class _HitProductItemState extends State<HitProductItem> {
  bool get isFavourite => HiveHelper.hasInFavourite(widget.data.id);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => ProductDetailsBloc(productId: widget.data.id)..add(LoadProductDetailsEvent()),
              child: const ProductDetails(),
            ),
          ),
        );
      },
      child: SizedBox(
        width: 156,
        height: 324,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                if (!widget.data.image.endsWith('.svg'))
                  CachedNetworkImage(
                    imageUrl: widget.data.image,
                    height: 156,
                    width: 156,
                    // fit: BoxFit.none,
                  )
                else
                  SvgPicture.network(
                    widget.data.image,
                    height: 156,
                    width: 156,
                    // fit: BoxFit.none,
                  ),
                Positioned(
                  left: 5,
                  top: 10,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: _colorFromHex(widget.data.stickers[0].backgroundColor),
                    ),
                    child: Text(
                      widget.data.stickers[0].name,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: _colorFromHex(widget.data.stickers[0].textColor),
                          ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: SvgPicture.network(widget.data.saleMonths[0].image),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('on tap favorite');
                          if (isFavourite) {
                            HiveHelper.deleteFavouriteDataById(widget.data.id);
                            setState(() {});
                          } else {
                            HiveHelper.addToFavourite(
                              FavouriteModel(
                                productId: widget.data.id,
                                name: widget.data.name,
                                image: widget.data.image,
                                price: widget.data.finishPrice.toDouble(),
                                isInBasket: HiveHelper.hasInBasket(widget.data.id),
                              ),
                            );
                            setState(() {});
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white.withAlpha(700),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Icon(isFavourite ? Icons.favorite : Icons.favorite_border, color: Colors.grey[800], size: 18),
                        ),
                      ),
                      Height12,
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withAlpha(700),
                        ),
                        child: Image.asset(
                          'assets/images/scale.png',
                          height: 18,
                          width: 18,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Height12,
            Text(
              widget.data.name,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [for (int i = 0; i < 5; ++i) Icon(Icons.star, color: Colors.grey[400], size: 18)]),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${(widget.data.salePrice * 1.36 / 24).toString().toValue()} so'mdan / 24 oy ",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withAlpha(100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${(widget.data.salePrice / 12).toString().toValue()} so'm / 0.0.12",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Height12,
                  Text(
                    "${widget.data.salePrice.toString().toValue()} so'm",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _colorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
