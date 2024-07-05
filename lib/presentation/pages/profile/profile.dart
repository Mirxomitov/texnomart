import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/blocs/favorite/favorite_bloc.dart';
import 'package:texnomart/presentation/blocs/profile/profile_bloc.dart';

import '../favorites/favorites_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        color: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Center(
              child: Text(
                "Xarid qilish, buyurtmalarni kuzatish\n va bo'lib-bo'lib to'lash uchun tizimga kiring",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).primaryColor,
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Kirish',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ItemProfile(
                      title: 'Aksiya',
                      imageUrl: 'assets/icons/aksiya.png',
                    ),
                    ItemProfile(
                      title: 'Sevimlilar',
                      subtitle: context.read<ProfileBloc>().state.favouriteProducts.length.toString(),
                      imageUrl: 'assets/icons/heart.png',
                      onClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlocProvider(
                              create: (context) => FavoriteBloc()..add(LoadFavorites()),
                              child: const FavouritesPage(),
                            ),
                          ),
                        );
                      },
                    ),
                    const ItemProfile(
                      title: 'Taqqoslash',
                      subtitle: '1',
                      imageUrl: 'assets/icons/compare.png',
                    ),
                    const ItemProfile(
                      title: 'Ilova tili',
                      subtitle: "O'z",
                      imageUrl: 'assets/icons/language.png',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemProfile(
                      title: 'Bizning do\'konlarimiz',
                      imageUrl: 'assets/icons/store.png',
                    ),
                    ItemProfile(
                      title: 'Qo\'llab-quvvatlash xizmati',
                      imageUrl: 'assets/icons/support.png',
                    ),
                    ItemProfile(
                      title: 'Ma\'lumot',
                      imageUrl: 'assets/icons/info.png',
                    ),
                    ItemProfile(
                      title: 'Ilova haqida',
                      imageUrl: 'assets/icons/app.png',
                    ),
                    ItemProfile(
                      title: 'Bildirishnomalar',
                      imageUrl: 'assets/icons/notification.png',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Versiya 3.2.12',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class ItemProfile extends StatelessWidget {
  const ItemProfile({
    super.key,
    required this.title,
    this.subtitle,
    required this.imageUrl,
    this.onClick,
  });

  final String title;
  final String? subtitle;
  final String imageUrl;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Row(
        children: [
          // Image.asset(imageUrl, width: 24, height: 24),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(width: 8),
          if (subtitle != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withAlpha(100),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                subtitle!,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
              ),
            ),
          const SizedBox(width: 12),
          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
        ],
      ),
    );
  }
}
