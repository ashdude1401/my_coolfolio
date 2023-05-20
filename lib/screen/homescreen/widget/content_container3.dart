import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../utils/theme/my_theme.dart';
import '../homescreen.dart';



/// The ContentContainer3 class is a stateful widget that displays a carousel slider with left and right
/// arrow buttons and a dots indicator, and is responsive to different screen sizes.

class ContentContainer3 extends StatefulWidget {
  const ContentContainer3({
    super.key,
  });

  @override
  State<ContentContainer3> createState() => _ContentContainer3State();
}

class _ContentContainer3State extends State<ContentContainer3> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

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
        child: Stack(
          children: [
            CarouselSlider(
              items: cards,
              carouselController: _controller,
              options: CarouselOptions(
                height: kIsWeb ? size.height * 0.97 : size.height * 0.99,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 0,
                autoPlay: kIsWeb ? false : true,
                autoPlayInterval: Duration(seconds: kIsWeb ? 0 : 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            kIsWeb
                ? Positioned(
                    bottom: size.height * 0.3,
                    left: size.width * 0.15,
                    child: Row(
                      children: [
                     /// Creating a left arrow button that, when tapped, updates the current index and
                     /// carousel controller to move to the previous page in the carousel. It is also
                     /// wrapped in an InkWell widget to provide a visual feedback when tapped. The
                     /// SizedBox widget is used to add spacing between the left arrow button and the
                     /// DotsIndicator widget.
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (_currentIndex == 0) {
                                _currentIndex = cards.length - 1;
                                _controller.jumpToPage(cards.length - 1);
                              } else {
                                _currentIndex = _currentIndex - 1;
                                _controller.previousPage();
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      MyTheme.kPrimaryColor.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(27),
                            ),
                            child: Icon(Icons.keyboard_arrow_left,
                                color: MyTheme.kPrimaryColor.withOpacity(0.2)),
                          ),
                        ),
                        const SizedBox(width: 10),
                        DotsIndicator(
                          dotsCount: cards.length,
                          position: _currentIndex,
                          decorator: DotsDecorator(
                              color: MyTheme.kPrimaryColor.withOpacity(0.2),
                              activeColor: MyTheme.kSecondaryColor,
                              size: const Size.square(9.0),
                              activeSize: const Size(18.0, 9.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_currentIndex == cards.length - 1) {
                                _currentIndex = 0;
                                _controller.jumpToPage(0);
                              } else {
                                _currentIndex = _currentIndex + 1;
                                _controller.nextPage();
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      MyTheme.kPrimaryColor.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(27),
                            ),
                            child: Icon(Icons.keyboard_arrow_right,
                                color: MyTheme.kPrimaryColor.withOpacity(0.2)),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox()
          ],
        ),
      );
    });
  }
}
