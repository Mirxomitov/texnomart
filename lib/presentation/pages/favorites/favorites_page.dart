import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/favorite/favorite_bloc.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

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
        title: Text("Sevimlilar", style: Theme.of(context).textTheme.titleMedium),
      ),
      body: BlocConsumer<FavoriteBloc, FavoriteState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.favoriteBasketList.length,
            itemBuilder: (_, index) => Container(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Text('productId: ${state.favoriteBasketList[index]}'),
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
