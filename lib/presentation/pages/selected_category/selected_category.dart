import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/data/model/chips_model.dart';
import 'package:texnomart/data/source/remote/response/product_all_category/products_all_category.dart';
import 'package:texnomart/presentation/pages/product_details/product_details.dart';
import 'package:texnomart/utils/to_value.dart';

import '../../blocs/product_details/product_details_bloc.dart';
import '../../blocs/selected_category/selected_category_bloc.dart';

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectedCategoryBloc, SelectedCategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(''),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 12.0,
            ),
            child: Column(
              children: [
                if (state.chips != null) Chips(chips: state.chips!),
                const FilterItem(),
                if (state.products != null) Expanded(child: ItemsGridView(products: state.products!)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Chips extends StatelessWidget {
  const Chips({super.key, required this.chips});

  final ChipsUIModel chips;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(width: 4),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ChipsItem(category: chips.data.categories[index]),
        itemCount: chips.data.categories.length,
      ),
    );
  }
}

class ChipsItem extends StatelessWidget {
  final CategoriesUIModel category;

  const ChipsItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(category.name, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}

class FilterItem extends StatelessWidget {
  const FilterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(
              child: Row(children: [
            const Icon(Icons.category_rounded),
            Text(
              'Ommabopligi',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ])),
          Expanded(
              child: Row(children: [
            const Icon(Icons.filter_alt),
            Text(
              'Filtrlar',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ])),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}

class ItemsGridView extends StatelessWidget {
  final ProductAllCategory products;

  const ItemsGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    if (products.data != null && products.data!.products != null && products.data!.products!.isNotEmpty) {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 2,
        ),
        itemCount: products.data?.products?.length ?? 0,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) => ProductItem(data: products.data!.products![index]),
      );
    }

    return const SizedBox(
      width: 0,
      height: 0,
    );
  }
}

class ProductItem extends StatelessWidget {
  final Products data;

  const ProductItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => ProductDetailsBloc(productId: data.id!)..add(LoadProductDetailsEvent()),
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
                if (data.image != null && !data.image!.endsWith('.svg'))
                  CachedNetworkImage(
                    imageUrl: data.image!,
                    height: 156,
                    width: 156,
                    // fit: BoxFit.none,
                  )
                else
                  SvgPicture.network(
                    data.image!,
                    height: 156,
                    width: 156,
                    // fit: BoxFit.none,
                  ),
                if (data.stickers != null && data.stickers!.isNotEmpty && data.stickers![0].backgroundColor != null)
                  Positioned(
                    left: 5,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: _colorFromHex(data.stickers![0].backgroundColor!),
                      ),
                      child: Text(
                        data.stickers![0].name!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: _colorFromHex(data.stickers![0].textColor!),
                            ),
                      ),
                    ),
                  ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: SvgPicture.network(data.saleMonths![0].image!),
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
                      const SizedBox(height: 12),
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
            const SizedBox(height: 12),
            Text(
              data.name!,
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
                      "${(data.salePrice! * 1.36 / 24).toString().toValue()} so'mdan / 24 oy ",
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
                      "${(data.salePrice! / 12).toString().toValue()} so'm / 0.0.12",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "${data.salePrice.toString().toValue()} so'm",
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