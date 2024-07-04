import 'package:flutter/material.dart';
import 'package:universal_web_image/universal_web_image.dart';

class SmallImage extends StatelessWidget {
  const SmallImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    print(imageUrl);

    return Container(
      height: 72,
      width: 56,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: UniversalWebImage(
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
        imageUrl: imageUrl,
        customLoaderBuilder: (context) => Container(
          color: Colors.grey[300],
          width: double.infinity,
          padding: const EdgeInsets.all(80),
          child: Image.asset('assets/images/logo_texnomart.png', color: Colors.grey[600]),
        ),
      ),
    );
  }
}
