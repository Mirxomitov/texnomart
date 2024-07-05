import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/pages/product_details/components/carousel_details.dart';
import 'package:texnomart/presentation/pages/product_details/components/small_image.dart';

import '../../../data/model/basket_model/basket_model.dart';
import '../../blocs/product_details/product_details_bloc.dart';
import 'components/price_and_add_to_basket.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.balance),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.heart_broken_sharp),
            onPressed: () {
              //context.read<>().add(AddToFavourites);
            },
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.productData != null) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  CarouselDetails(images: state.productData!.data.data.largeImages),
                  const SizedBox(height: 12),
                  Text(
                    state.productData!.data.data.name,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 72,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.productData!.data.data.smallImages.length,
                      itemBuilder: (_, index) => SmallImage(
                        imageUrl: state.productData!.data.data.smallImages[index],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  PriceAndAddToBasket(
                    price: state.productData!.data.data.loanPrice.toString(),
                    onTap: () {
                      if (state.inBasket) return;
                      final data = state.productData!.data.data;
                      final basketValue = BasketModel(
                        productId: "${data.id}",
                        image: data.smallImages[1],
                        name: data.name,
                        count: 1,
                        isChecked: true,
                        // TODO make non static
                        isFavourite: false,
                        price: data.salePrice.toDouble(),
                      );

                      context.read<ProductDetailsBloc>().add(AddToBasket(inBasket: true, data: basketValue));
                      // onAddToBasket(basketValue);
                      print('added to basket ProductDetails screen ');
                    },
                    added: state.inBasket,
                  ),
                ],
              ),
            );
          }
          return const Center();
          //return Container(alignment: Alignment.center, child: Lottie.asset("assets/lottie/loading.json", width: 34, height: 34));
        },
      ),
    );
  }
}
