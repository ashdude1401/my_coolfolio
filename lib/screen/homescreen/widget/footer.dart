
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';

import 'dart:html' as html;

import '../../about_us_screen/about_us_screen.dart';
import '../../faq_screen/faq_screen.dart';
import '../../privacy_policy_screen/privacy_policy_screen.dart';
import '../../terms_condition_screen/terms_condition_screen.dart';

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
                          // SvgPicture.asset(kDiscordIcon),
                          // SizedBox(
                          //   width: size.width * 0.02,
                          // ),
                          GestureDetector(
                            onTap: () => html.window.open(
                                "https://instagram.com/thedarzeeapp?igshid=MzNlNGNkZWQ4Mg==",
                                "_blank"),
                            child: SvgPicture.asset(kInstagramIcon,
                                height: size.height * 0.04),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          GestureDetector(
                              onTap: () => html.window.open(
                                  "https://www.facebook.com/darzeeapp?mibextid=ZbWKwL",
                                  "_blank"),
                              child: SvgPicture.asset(kFbIcon,
                                  height: size.height * 0.04)),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          // SvgPicture.asset(kTwitterIcon),
                          GestureDetector(
                            onTap: () => html.window.open(
                                "https://www.linkedin.com/company/darzee-app/",
                                "_blank"),
                            child: SvgPicture.asset(kLinkedIn,
                                height: size.height * 0.038),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(AboutUsPage.routeName),
                        child: Text(
                          "About Us",
                          style: textTheme.bodyMedium?.copyWith(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: MyTheme.kPrimaryColor,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      // GestureDetector(
                      //   onTap: () => Navigator.of(context)
                      //       .pushNamed(AboutUsPage.routeName),
                      //   child: Text(
                      //     kSupport,
                      //     style: textTheme.bodyMedium?.copyWith(
                      //         fontFamily: GoogleFonts.inter().fontFamily,
                      //         color: MyTheme.kPrimaryColor,
                      //         fontWeight: FontWeight.w900),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: size.height * 0.02,
                      // ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(FaqScreen.namedRoute),
                        child: Text(
                          "FAQs",
                          style: textTheme.bodyMedium?.copyWith(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: MyTheme.kPrimaryColor,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(PrivacyPolicyScreen.namedRoute),
                        child: Text(
                          "Privacy Policy",
                          style: textTheme.bodyMedium?.copyWith(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: MyTheme.kPrimaryColor,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(TermsConditionScreen.namedRoute),
                        child: Text(
                          "Terms of service",
                          style: textTheme.bodyMedium?.copyWith(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: MyTheme.kPrimaryColor,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
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
                      ))
                ],
              )
            : Row(
                children: [
                  SvgPicture.asset(kHeaderIconImg,
                      height: size.width <= 280
                          ? size.height * 0.03
                          : size.height * 0.05),
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // SvgPicture.asset(kDiscordIcon,
                          //     height: size.height * 0.04),
                          // SizedBox(
                          //   width: size.width * 0.02,
                          // ),
                          GestureDetector(
                            onTap: () => html.window.open(
                                "https://instagram.com/thedarzeeapp?igshid=MzNlNGNkZWQ4Mg==",
                                "_blank"),
                            child: SvgPicture.asset(kInstagramIcon,
                                height: size.height * 0.04),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          GestureDetector(
                              onTap: () => html.window.open(
                                  "https://www.facebook.com/darzeeapp?mibextid=ZbWKwL",
                                  "_blank"),
                              child: SvgPicture.asset(kFbIcon,
                                  height: size.height * 0.04)),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          // SvgPicture.asset(kTwitterIcon,
                          //     height: size.width <= 280
                          //         ? size.height * 0.03
                          //         : size.height * 0.03),
                          GestureDetector(
                            onTap: () => html.window.open(
                                "https://www.linkedin.com/company/darzee-app/",
                                "_blank"),
                            child: SvgPicture.asset(kLinkedIn,
                                height: size.height * 0.038),
                          )
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
