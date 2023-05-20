import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../homescreen.dart';


/// The `ContentContainer4` class creates a carousel slider widget using the `CarouselSlider` class from
/// the `carousel_slider` package with customizable options.

class ContentContainer4 extends StatelessWidget {
  const ContentContainer4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return /// This code is creating a carousel slider widget using the `CarouselSlider` class from the
    /// `carousel_slider` package. The `items` parameter is a list of widgets that will be
    /// displayed in the carousel. The `options` parameter is an object of `CarouselOptions`
    /// class that defines the behavior and appearance of the carousel. The options include
    /// setting the height and aspect ratio of the carousel, enabling/disabling infinite
    /// scrolling, setting the initial page, enabling autoplay, and setting the animation
    /// duration and curve.
    CarouselSlider(
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
