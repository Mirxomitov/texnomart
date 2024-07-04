import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselDetails extends StatefulWidget {
  const CarouselDetails({super.key, required this.images});

  final List<String> images;

  @override
  State<CarouselDetails> createState() => _CarouselDetailsState();
}

class _CarouselDetailsState extends State<CarouselDetails> {
  int position = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.images.map((url) => CarouselItem(image: url)).toList(),
          options: CarouselOptions(
            height: 180,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            initialPage: position,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (a, b) {
              setState(() {
                position = a;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(height: 8),
        DotsIndicator(
          dotsCount: widget.images.length,
          position: position,
          decorator: DotsDecorator(
            color: Colors.grey.shade300, // Inactive color
            activeColor: Colors.black,
          ),
        )
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
        imageUrl: image,
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
