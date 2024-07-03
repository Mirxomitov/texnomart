import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:texnomart/data/model/slider_model.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key, required this.sliderDataModel});

  final SliderDataModel sliderDataModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
        imageUrl: sliderDataModel.imageMobileWeb,
        placeholder: (context, url) => Container(
          color: Colors.grey[300],
          width: double.infinity,
          padding: const EdgeInsets.all(80),
          child: Image.asset('assets/images/logo_texnomart.png', color: Colors.grey[600]),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
