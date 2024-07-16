import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/favourite_model/favourite_model.dart';
import 'package:texnomart/presentation/blocs/basket/basket_bloc.dart';
import 'package:texnomart/presentation/blocs/favorites/favorite_bloc.dart';

class ListProductItem extends StatelessWidget {
  const ListProductItem({super.key, required this.favoriteBasket});

  final FavouriteModel favoriteBasket;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.network(
            favoriteBasket.image,
            height: 70,
            width: 100,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favoriteBasket.name,
                  maxLines: 2,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      favoriteBasket.price.toString(),
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        if (favoriteBasket.isInBasket) {
                          context.read<FavoriteBloc>().add(RemoveFromBasket(data: favoriteBasket));
                         // context.read<BasketBloc>().add(LoadBasketData());
                        } else {
                          context.read<FavoriteBloc>().add(AddToBasket(data: favoriteBasket));
                          //context.read<BasketBloc>().add(LoadBasketData());
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Theme.of(context).primaryColor),
                        ),
                        child: Icon(
                          favoriteBasket.isInBasket ? Icons.shopping_cart_sharp : Icons.remove_shopping_cart,
                          color: favoriteBasket.isInBasket ? Theme.of(context).primaryColor : Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    IconButton(
                      onPressed: () {
                        context.read<FavoriteBloc>().add(FRemoveFromFavorite(favoriteBasket));
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
