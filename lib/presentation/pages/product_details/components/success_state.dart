import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/pages/product_details/components/price_and_add_to_basket.dart';

import '../../../../data/model/basket_model/basket_model.dart';
import '../../../blocs/basket/basket_bloc.dart';
import '../../../blocs/main/main_bloc.dart';
import '../../../blocs/product_details/product_details_bloc.dart';
import 'carousel_details.dart';

class SuccessState extends StatelessWidget {
  const SuccessState(this.state, {super.key});

  final ProductDetailsState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
            PriceAndAddToBasket(
              price: state.productData!.data.data.loanPrice.toString(),
              onTap: () {
                if (state.inBasket) {
                  context.read<MainBloc>().add(ChangeBottomNavigation(chosenIndex: 2));
                  Navigator.pop(context, state.productId);
                  return;
                }
                final data = state.productData!.data.data;
                final basketValue = BasketModel(
                  productId: "${data.id}",
                  image: data.smallImages[1],
                  name: data.name,
                  count: 1,
                  isChecked: true,
                  isFavourite: false,
                  price: data.salePrice.toDouble(),
                );

                context.read<ProductDetailsBloc>().add(AddToBasket(inBasket: true, data: basketValue));
                context.read<BasketBloc>().add(LoadBasketData());
                context.read<MainBloc>().add(LoadAllBasketData());
              },
              added: state.inBasket,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black38),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "To'lov variantlari",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Spacer(),
                          Icon(Icons.info_outline)
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, border: Border.all(color: Colors.amber)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/anorbank.png',
                                  height: 30,
                                  width: 100,
                                ),
                                const Spacer(),
                                const Text(
                                  "oyiga 309 834 so'm",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              color: Colors.black12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jami",
                                        style: TextStyle(color: Colors.black38, fontSize: 14),
                                      ),
                                      Text(
                                        "1 859 000 so'm",
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width / 3,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black54),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      child: Center(
                                          child: Text(
                                        "Rasmiylashtirish",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
