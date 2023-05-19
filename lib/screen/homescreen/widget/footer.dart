import 'package:darzee_web/constants/image_strings.dart/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';

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
            : Row(
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
