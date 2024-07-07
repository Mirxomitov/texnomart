import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/chips_model.dart';
import '../../../blocs/selected_category/selected_category_bloc.dart';
import '../selected_category.dart';

class Chips extends StatelessWidget {
  const Chips({super.key, required this.chips});

  final ChipsUIModel chips;

  @override
  Widget build(BuildContext context) {
    bool showImage = true;

    for (int i = 0; i < chips.data.categories.length; ++ i) {
      if (chips.data.categories[i].image == '') showImage = false;
    }

    return SizedBox(
      height: showImage ? 64 : 42,
      child: ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ChipsItem(category: chips.data.categories[index], showImage: showImage),
        itemCount: chips.data.categories.length,
      ),
    );
  }
}

class ChipsItem extends StatelessWidget {
  final CategoriesUIModel category;
  final bool showImage;

  const ChipsItem({super.key, required this.category, required this.showImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(" --- has child ${category.hasChild}");
        if (category.hasChild) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => BlocProvider(
                create: (context) => SelectedCategoryBloc(slug: category.slug)..add(LoadAllEvent()),
                child: const SelectedCategory(),
              ),
            ),
          );
        } else {
          // TODO filter
        }
      },
      child: Builder(builder: (context) {
        if (showImage) {
          return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                CachedNetworkImage(imageUrl: category.image, height: 36, width: 56, fit: BoxFit.contain),
                const SizedBox(width: 8),
                Text(category.name, style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(width: 12),
              ],
            ),
          );
        }

        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(category.name, style: Theme.of(context).textTheme.bodyMedium),
        );
      }),
    );
  }
}
