import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../homescreen.dart';

class ContentContainer4 extends StatelessWidget {
  const ContentContainer4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: testemonialCards,
      options: CarouselOptions(
        height: size.height * 0.99,
        aspectRatio: 9 / 16,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        initialPage: 0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
