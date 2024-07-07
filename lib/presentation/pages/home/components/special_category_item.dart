import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texnomart/data/model/special_categories_model.dart';

class SpecialCategoryItem extends StatelessWidget {
  const SpecialCategoryItem({super.key, required this.data, required this.onTap});

  final SpecialCategoriesModelData data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 96,
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.network(data.image),
          ),
          const SizedBox(height: 8),
          Text(
            overflow: TextOverflow.ellipsis,
            data.title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
