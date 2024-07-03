import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/utils/commons.dart';

class HitProductItem extends StatelessWidget {
  final HitProductsModelData data;

  const HitProductItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156,
      height: 324,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              if (!data.image.endsWith('.svg'))
                CachedNetworkImage(
                  imageUrl: data.image,
                  height: 156,
                  width: 156,
                  // fit: BoxFit.none,
                )
              else
                SvgPicture.network(
                  data.image,
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
                    color: _colorFromHex(data.stickers[0].backgroundColor),
                  ),
                  child: Text(
                    data.stickers[0].name,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: _colorFromHex(data.stickers[0].textColor),
                        ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 10,
                child: SvgPicture.network(data.saleMonths[0].image),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withAlpha(700),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/heart.png',
                        height: 18,
                        width: 18,
                        color: Colors.grey[800],
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
            data.name,
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
                    "${toValue(data.salePrice * 1.36 / 24)} so'mdan / 24 oy ",
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
                    "${toValue(data.salePrice / 12)} so'm / 0.0.12",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                  ),
                ),
                Height12,
                Text(
                  "${toValue(data.salePrice)} so'm",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
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

  String toValue(num number) {
    List<String> parts = number.toStringAsFixed(0).split('.');
    String integerPartReversed = parts[0].split('').reversed.join('');
    String formattedReversed = integerPartReversed.replaceAllMapped(RegExp(r'.{3}'), (match) => '${match[0]} ');
    String formatted = formattedReversed.split('').reversed.join('').trim();

    return formatted;
  }
}
