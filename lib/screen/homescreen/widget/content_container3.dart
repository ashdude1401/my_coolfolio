import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../homescreen.dart';

class ContentContainer3 extends StatelessWidget {
  const ContentContainer3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Container(
        width: size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: CarouselSlider(
          items: cards,
          options: CarouselOptions(
            height: kIsWeb ? size.height * 0.97 : size.height * 0.99,
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: kIsWeb ? 5 : 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
        ),
      );
    });
  }
}
