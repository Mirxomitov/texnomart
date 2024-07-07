import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/blocs/main/main_bloc.dart';
import 'package:texnomart/presentation/pages/favorites/list_product_item.dart';

import '../../blocs/favorites/favorite_bloc.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteBloc, FavoriteState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Theme.of(context).primaryColor,
            title: Text("Sevimlilar", style: Theme.of(context).textTheme.titleMedium),
          ),
          body: BlocConsumer<FavoriteBloc, FavoriteState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state.favoriteBasketList.isEmpty) {
                return Container(
                  padding: const EdgeInsets.all(56.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svgs/empty_favorites_icon.svg', width: 72, height: 72),
                      const SizedBox(height: 16),
                      Text("Sevimlilar ro'yxati bo'sh", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text(
                        "Sevimli mahsulotlaringizni keyinroq ko'rish yoki sotib olish uchun ularni sevimlilaringizga qo'shing",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey, fontWeight: FontWeight.normal, height: 1.5),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          context.read<MainBloc>().add(ChangeBottomNavigation(chosenIndex: 1));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Text(
                            "Mahsulotlarni ko'rish",
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }

              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.favoriteBasketList.length,
                itemBuilder: (context, index) => ListProductItem(favoriteBasket: state.favoriteBasketList[index]),
              );
            },
          ),
        );
      },
    );
  }
}
