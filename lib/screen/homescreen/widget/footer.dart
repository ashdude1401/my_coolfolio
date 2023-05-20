import 'package:darzee_web/constants/image_strings.dart/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
/// The Footer class is a stateless widget that displays a responsive footer with various links and
/// icons.

class Footer extends StatelessWidget {
  const Footer({
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
        // height: size.height * 0.4,
        width: size.width,
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.05,
          horizontal: size.width * 0.05,
        ),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFE5E5E5),
            ),
          ),
        ),
        child: kIsWeb
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// The above code is creating a column layout with a header icon, a title "Contact
                  /// Us", and social media icons (Discord, Instagram, Facebook, and Twitter) arranged
                  /// in a row. The layout is styled using predefined constants and sizes. The text
                  /// style is set to a medium body font with a custom font family, color, and font
                  /// weight. The social media icons are loaded from SVG image assets. The
                  /// `CrossAxisAlignment` property is set to `CrossAxisAlignment.start` to align the
                  /// children to the start of the column.
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        kHeaderIconImg,
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      Text(
                        kContactUs,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(kDiscordIcon),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          SvgPicture.asset(kInstagramIcon),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          SvgPicture.asset(kFbIcon),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          SvgPicture.asset(kTwitterIcon),
                        ],
                      )
                    ],
                  ),
                 /// The above code is creating a column widget with multiple Text widgets inside it.
                 /// The Text widgets are displaying different strings with a specific style. The
                 /// MainAxisAlignment is set to space between, which means the widgets will be evenly
                 /// spaced out vertically. The size of the SizedBox widgets is set based on the height
                 /// of the screen.
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kTandC,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kTandC,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kTandC,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kTandC,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kTandC,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kSupport,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kTandC,
                        style: textTheme.bodyMedium?.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kPrimaryColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                /// The above code is creating a container with a white background color, a border with
                /// a low opacity black color, and a circular border radius of 10. Inside the container,
                /// there is a column with a title text, some empty space, and a row of two SVG images
                /// representing the Google Play and Apple Store logos. The container is wrapped in a
                /// list of widgets.
                  Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          border: Border.all(
                              color: const Color(0xFF000000).withOpacity(0.1)),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.01,
                        vertical: size.height * 0.03,
                      ),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              kDownloadDarzee,
                              style: textTheme.titleMedium?.copyWith(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  color: MyTheme.kPrimaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Wrap(
                              children: [
                                SvgPicture.asset(
                                  kGooglePlayLight,
                                  fit: BoxFit.cover,
                                  height: size.height * 0.05,
                                ),
                                SvgPicture.asset(
                                  kAppleStoreLight,
                                  fit: BoxFit.cover,
                                  height: size.height * 0.05,
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              )
            : /// The above code is creating a Row widget with two children: an SVG image (loaded from a
            /// constant variable) and a Column widget. The Column widget has one child, which is
            /// another Row widget containing four SVG images (loaded from constant variables) with
            /// some spacing between them. This code is likely creating a header or navigation bar for
            /// a website or app.
            Row(
                children: [
                  SvgPicture.asset(
                    kHeaderIconImg,
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(kDiscordIcon),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          SvgPicture.asset(kInstagramIcon),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          SvgPicture.asset(kFbIcon),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          SvgPicture.asset(kTwitterIcon),
                        ],
                      ),
                    ],
                  )
                ],
              ),
      );
    });
  }
}
