import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/pages/product_details/components/carousel_details.dart';
import 'package:texnomart/presentation/pages/product_details/components/small_image.dart';

import '../../blocs/product_details/product_details_bloc.dart';
import 'components/price_and_add_to_basket.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    onTap: () {},
                  ),
                ],
              ),
            );
          }

          return const Center();
        },
      ),
    );
  }
}
