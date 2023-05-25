import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
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
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Container(
          color: Colors.white,
          width: size.width,
          height: kIsWeb ? null : size.height * 0.65,
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
  const TestemonialContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
        final kIsWeb =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop;
        return Column(
          children: [
            Image.asset(kTestimonialImg1Png,
                height: kIsWeb ? null : size.height * 0.1),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(kCustomerName,
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
              kBoutique,
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
              kTestonomial,
              softWrap: true,
              maxLines: 3,
              textAlign: TextAlign.center,

              // textScaleFactor: size.width <= 600 ? 0.8 : 1.2,
              style: textTheme.bodyLarge?.copyWith(
                fontFamily: GoogleFonts.mukta().fontFamily,
                color: MyTheme.kPrimaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
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
