import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/slider_model.dart';
import 'carousel_item.dart';

class TopSlider extends StatefulWidget {
  const TopSlider({super.key, required this.sliders});

  final SliderModel sliders;

  @override
  State<TopSlider> createState() => _TopSliderState();
}

class _TopSliderState extends State<TopSlider> {
  int position = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.sliders.data.map((data) => CarouselItem(sliderDataModel: data)).toList(),
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
          dotsCount: widget.sliders.data.length,
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
