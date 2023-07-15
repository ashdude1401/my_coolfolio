
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';

/// The `ContentContainer4` class creates a carousel slider widget using the `CarouselSlider` class from
/// the `carousel_slider` package with customizable options.

class ContentContainer4 extends StatelessWidget {
  const ContentContainer4({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Container(
          color: Colors.white,
          width: size.width,
          height: kIsWeb ? null : size.height * 0.72,
          margin: kIsWeb
              ? EdgeInsets.only(
                  top: size.height * 0.03, bottom: size.height * 0.12)
              : EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Testimonials",
                style: kIsWeb
                    ? textTheme.headlineSmall?.copyWith(
                        color: MyTheme.kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      )
                    : textTheme.headlineSmall?.copyWith(
                        color: MyTheme.kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
              ),
              kIsWeb
                  ? SizedBox(
                      height: size.height * 0.04,
                    )
                  : const SizedBox(
                      height: 0,
                      width: 0,
                    ),
              const TestemonialCard(),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ));
    });
  }
}

class TestemonialContent extends StatelessWidget {
  const TestemonialContent(
      {super.key,
      required this.customerName,
      required this.boutique,
      required this.testonomial,
      required this.img});

  final String customerName;
  final String boutique;
  final String testonomial;
  final String img;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
        final kIsWeb =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop;
        return SelectionArea(
          child: Column(
            children: [
              SizedBox(
                height: kIsWeb ? size.width * 0.07 : size.height * 0.09,
                width: kIsWeb ? size.width * 0.07 : size.height * 0.09,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(customerName,
                  softWrap: true,
                  style: kIsWeb
                      ? textTheme.bodyLarge?.copyWith(
                          color: MyTheme.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        )
                      : textTheme.bodyMedium?.copyWith(
                          color: MyTheme.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        )),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                boutique,
                softWrap: true,
                style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  color: MyTheme.kPrimaryColor.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                testonomial,
                softWrap: true,
                // maxLines: 3,
                textAlign: TextAlign.center,

                // textScaleFactor: size.width <= 600 ? 0.8 : 1.2,
                style: textTheme.bodyLarge?.copyWith(
                  fontFamily: GoogleFonts.mukta().fontFamily,
                  color: MyTheme.kPrimaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

final List<TestemonialCard> testemonialCards = [
  const TestemonialCard(),
  const TestemonialCard(),
  const TestemonialCard(),
];

class TestemonialCard extends StatefulWidget {
  const TestemonialCard({
    Key? key,
  }) : super(key: key);

  @override
  State<TestemonialCard> createState() => _TestemonialCardState();
}

class _TestemonialCardState extends State<TestemonialCard> {
  int currentIndex = 0;
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    late final List<TestemonialContent> contentList = [
      const TestemonialContent(
        img: kGentsTailorImg,
        customerName: "Parveen",
        boutique: "Boutique, Gurgaon",
        testonomial:
            "I am thrilled with the convenience and efficiency that Darzee brings to my boutique. With just a few clicks, I can manage my orders and keep my customers updated on their order status. The dashboard also provides me with valuable insights that help me make better business decisions.",
      ),
      const TestemonialContent(
        img: kLadiesTailorImg,
        customerName: "Vibha",
        boutique: "Boutique, Yamuna Nagar",
        testonomial: kTestonomial,
      ),
      const TestemonialContent(
        img: kPunjabiTailorImg,
        customerName: "Binder",
        boutique: "Boutique, Patiala",
        testonomial: kTestemonial2,
      ),
    ];

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final kIsWeb = sizingInformation.isDesktop;

        return SelectionArea(
          child: SizedBox(
            width: double.infinity,
            child: kIsWeb
                ? SizedBox(
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: size.height * 0.0,
                          left: size.width * 0.05,
                          child: CircleAvatar(
                            radius: size.width * 0.08,
                            backgroundColor:
                                const Color(0xFFFF4C7A).withOpacity(0.1),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0,
                          right: size.width * 0.05,
                          child: CircleAvatar(
                            radius: size.width * 0.07,
                            backgroundColor:
                                const Color(0xFF7A71F5).withOpacity(0.1),
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.05,
                              vertical: size.height * 0.02,
                            ),
                            width: size.width * 0.8,
                            margin: EdgeInsets.only(
                              top: size.height * 0.018,
                              bottom: size.height * 0.018,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (currentIndex == 0) {
                                        currentIndex = contentList.length - 1;
                                        controller.jumpToPage(currentIndex);
                                      } else {
                                        currentIndex = currentIndex - 1;
                                        controller.previousPage();
                                      }
                                    });
                                  },
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: size.width * 0.045,
                                      height: size.height * 0.045,
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: MyTheme.kPrimaryColor
                                              .withOpacity(0.6),
                                          width: 1,
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.keyboard_arrow_left_rounded,
                                        size: 25,
                                        color: MyTheme.kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      CarouselSlider(
                                        items: contentList,
                                        carouselController: controller,
                                        options: CarouselOptions(
                                          height: size.height * 0.44,
                                          viewportFraction: 1,
                                          initialPage: 0,
                                          enableInfiniteScroll: false,
                                          reverse: false,
                                          autoPlay: true,
                                          autoPlayInterval:
                                              const Duration(seconds: 6),
                                          autoPlayAnimationDuration:
                                              const Duration(milliseconds: 800),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          enlargeCenterPage: true,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          },
                                          scrollDirection: Axis.horizontal,
                                        ),
                                      ),
                                      DotsIndicator(
                                        dotsCount: contentList.length,
                                        position: currentIndex,
                                        decorator: DotsDecorator(
                                            color: MyTheme.kPrimaryColor
                                                .withOpacity(0.2),
                                            activeColor:
                                                MyTheme.kSecondaryColor,
                                            size: const Size.square(9.0),
                                            activeSize: const Size(18.0, 9.0),
                                            activeShape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0))),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (currentIndex ==
                                          contentList.length - 1) {
                                        currentIndex = 0;
                                        controller.jumpToPage(0);
                                      } else {
                                        currentIndex = currentIndex + 1;
                                        controller.nextPage();
                                      }
                                    });
                                  },
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: size.width * 0.045,
                                      height: size.height * 0.045,
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: MyTheme.kPrimaryColor
                                              .withOpacity(0.6),
                                          width: 1,
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        size: 25,
                                        color: MyTheme.kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.03,
                      bottom: size.height * 0.025,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      // vertical: size.height * 0.15,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: contentList,
                          carouselController: controller,
                          options: CarouselOptions(
                            height: size.height * 0.44,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: false,
                            reverse: false,
                            autoPlay: false,
                            autoPlayInterval: const Duration(seconds: 6),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        DotsIndicator(
                          dotsCount: contentList.length,
                          position: currentIndex,
                          decorator: DotsDecorator(
                              color: MyTheme.kPrimaryColor.withOpacity(0.2),
                              activeColor: MyTheme.kSecondaryColor,
                              size: const Size.square(9.0),
                              activeSize: const Size(18.0, 9.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ],
                    )),
          ),
        );
      },
    );
  }
}
