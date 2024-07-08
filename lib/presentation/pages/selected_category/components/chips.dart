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
    return BlocBuilder<SelectedCategoryBloc, SelectedCategoryState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
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
            } else if (state.selectedChips == null || state.selectedChips.toString() != category.name) {
              context.read<SelectedCategoryBloc>().add(SelectChips(chips: category.name));
            }
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: state.selectedChips != null && state.selectedChips == category.name
                  ? Theme.of(context).primaryColor.withAlpha(100)
                  : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                if (showImage) CachedNetworkImage(imageUrl: category.image, height: 36, width: 56, fit: BoxFit.contain),
                const SizedBox(width: 12),
                Text(
                  category.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 12),
                if (state.selectedChips != null && state.selectedChips == category.name)
                  GestureDetector(
                    onTap: () {
                      print('onclick');
                      context.read<SelectedCategoryBloc>().add(RemoveChips());
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.close, color: Colors.black, size: 12),
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }

/*  Widget _buildCategoryWidgetWithImage(BuildContext context) {
    return GestureDetector(
      onTap: onTap(context),
      child: Container(
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
      ),
    );
  }

  Widget _buildCategoryWidgetWithoutImage(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(category.name, style: Theme.of(context).textTheme.bodyMedium),
    );
  }

  Widget _buildSelectedCategoryWidget(BuildContext context, String chips) {
    return GestureDetector(
      onTap: selectChips(context, chips),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withAlpha(100),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Text(category.name, style: Theme.of(context).textTheme.bodyMedium),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDefaultCategoryWidget(BuildContext context, String chips) {
    return GestureDetector(
      onTap: selectChips(context, chips),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Text(category.name, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }

  onTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => BlocProvider(
          create: (context) => SelectedCategoryBloc(slug: category.slug)..add(LoadAllEvent()),
          child: const SelectedCategory(),
        ),
      ),
    );
  }

  selectChips(BuildContext context, String chips) {
    if (context.read<SelectedCategoryBloc>().state.selectedChips == null) {
      context.read<SelectedCategoryBloc>().add(SelectChips(chips: chips));
    } else {
      context.read<SelectedCategoryBloc>().add(RemoveChips());
    }
  }*/
}
