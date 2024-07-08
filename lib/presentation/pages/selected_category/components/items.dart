import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/blocs/basket/basket_bloc.dart';
import 'package:texnomart/presentation/blocs/main/main_bloc.dart';
import 'package:texnomart/presentation/blocs/profile/profile_bloc.dart';
import 'package:texnomart/utils/to_value.dart';

import '../../../../data/model/basket_model/basket_model.dart';
import '../../../../data/model/favourite_model/favourite_model.dart';
import '../../../../data/source/local/hive/hive_helper.dart';
import '../../../../data/source/remote/response/product_all_category/products_all_category.dart';
import '../../../../domain/repositories/main_repository.dart';
import '../../../blocs/product_details/product_details_bloc.dart';
import '../../product_details/product_details.dart';

class ItemsGridView extends StatelessWidget {
  final ProductAllCategory products;

  const ItemsGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    if (products.data != null && products.data!.products != null && products.data!.products!.isNotEmpty) {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 0.45,
        ),
        itemCount: products.data?.products?.length ?? 0,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) => ProductItem(data: products.data!.products![index], index: index),
      );
    }

    return const SizedBox(
      width: 0,
      height: 0,
    );
  }
}

class ProductItem extends StatefulWidget {
  final Products data;
  final int index;

  const ProductItem({super.key, required this.data, required this.index});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool get isFavourite => HiveHelper.hasInFavourite(widget.data.id!);

  bool get isInBasket => HiveHelper.hasInBasket(widget.data.id!);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BasketBloc, BasketState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => ProductDetailsBloc(productId: widget.data.id!)..add(LoadProductDetailsEvent()),
                  child: const ProductDetails(),
                ),
              ),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 156,
                height: 324,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade100,
                    ),
                    Stack(
                      children: [
                        if (widget.data.image != null && !widget.data.image!.endsWith('.svg'))
                          CachedNetworkImage(
                            imageUrl: widget.data.image!,
                            height: 156,
                            width: 156,
                            // fit: BoxFit.none,
                          )
                        else
                          SvgPicture.network(
                            widget.data.image!,
                            height: 156,
                            width: 156,
                            // fit: BoxFit.none,
                          ),
                        if (widget.data.stickers != null && widget.data.stickers!.isNotEmpty && widget.data.stickers![0].backgroundColor != null)
                          Positioned(
                            left: 5,
                            top: 10,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: _colorFromHex(widget.data.stickers![0].backgroundColor!),
                              ),
                              child: Text(
                                widget.data.stickers![0].name!,
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: _colorFromHex(widget.data.stickers![0].textColor!),
                                    ),
                              ),
                            ),
                          ),
                        if (widget.data.saleMonths != null && widget.data.saleMonths!.isNotEmpty && widget.data.saleMonths![0].image != null)
                          Positioned(
                            left: 10,
                          bottom: 10,
                          child: SvgPicture.network(widget.data.saleMonths![0].image!),
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (isFavourite) {
                                    HiveHelper.deleteFavouriteDataById(widget.data.id!);
                                    context.read<ProfileBloc>().add(LoadProfileData());

                                    setState(() {});
                                  } else {
                                    HiveHelper.addToFavourite(
                                      FavouriteModel(
                                        productId: widget.data.id!,
                                        name: widget.data.name!,
                                        price: widget.data.loanPrice!,
                                        image: widget.data.image!,
                                        isInBasket: HiveHelper.hasInBasket(widget.data.id!),
                                      ),
                                    );
                                    context.read<ProfileBloc>().add(LoadProfileData());

                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white.withAlpha(700),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: isFavourite
                                      ? Icon(Icons.favorite, color: Colors.grey[800], size: 18)
                                      : Icon(Icons.favorite_border, color: Colors.grey[800], size: 18),
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
                      widget.data.name!,
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
                              "${(widget.data.salePrice! * 1.36 / 24).toString().toValue()} so'mdan / 24 oy ",
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
                              "${(widget.data.salePrice! / 12).toString().toValue()} so'm / 0.0.12",
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "${widget.data.salePrice.toString().toValue()} so'm",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    if (isInBasket) {
                                      HiveHelper.deleteBasketDataById(widget.data.id!);
                                      context.read<BasketBloc>().add(LoadBasketData());
                                      context.read<MainBloc>().add(LoadAllBasketData());
                                    } else {
                                      MainRepository.addToBasket(
                                        BasketModel(
                                          productId: widget.data.id!.toString(),
                                          name: widget.data.name!,
                                          price: widget.data.loanPrice!,
                                          image: widget.data.image!,
                                          isFavourite: isFavourite,
                                          isChecked: true,
                                          count: 1,
                                        ),
                                      );

                                      context.read<BasketBloc>().add(LoadBasketData());
                                      context.read<MainBloc>().add(LoadAllBasketData());
                                    }

                                    setState(() {});
                                  },
                                  child: SvgPicture.asset(
                                    isInBasket ? 'assets/svgs/in_cart.svg' : 'assets/svgs/to_cart_button.svg',
                                    height: 28,
                                    width: 28,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 1,
                color: widget.index % 2 == 0 ? Colors.grey.shade100 : Colors.transparent,
              ),
            ],
          ),
        );
      },
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
