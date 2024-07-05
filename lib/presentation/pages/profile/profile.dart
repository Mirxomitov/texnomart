import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            "Xarid qilish, buyurtmalarni kuzatish va bo'lib-bo'lib to'lash uchun tizimga kiring",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Container(
            color: Theme.of(context).primaryColor,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Kirish',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Column(
              children: [
                ItemProfile(
                  title: 'Aksiya',
                  imageUrl: 'assets/icons/aksiya.png',
                ),
                ItemProfile(
                  title: 'Sevimlilar',
                  subtitle: '2',
                  imageUrl: 'assets/icons/heart.png',
                ),
                ItemProfile(
                  title: 'Taqqoslash',
                  subtitle: '1',
                  imageUrl: 'assets/icons/compare.png',
                ),
                ItemProfile(
                  title: 'Ilova tili',
                  subtitle: "O'z",
                  imageUrl: 'assets/icons/language.png',
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Column(
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
          const SizedBox(height: 8),
          Text(
            'Versiya 3.2.12',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class ItemProfile extends StatelessWidget {
  const ItemProfile({super.key, required this.title, this.subtitle, required this.imageUrl});

  final String title;
  final String? subtitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imageUrl, width: 24, height: 24),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(width: 4),
        if (subtitle != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              subtitle!,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
            ),
          ),
        const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
      ],
    );
  }
}
