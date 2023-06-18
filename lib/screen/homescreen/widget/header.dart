import 'package:darzee_web/constants/size_constant.dart/size_constant.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../common_components/goodbye_text_playstore_icons.dart';
import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
import '../homescreen.dart';

import 'dart:html' as html;

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Container(
          height: kIsWeb ? size.height * 0.99 : null,
          width: size.width,
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.04,
              horizontal: kIsWeb ? 0.0 : kMobilePadding),
          decoration: BoxDecoration(
            color: MyTheme.kPrimaryColor.withOpacity(0.08),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              transform: GradientRotation(-0.5),
              colors: [
                MyTheme.linercolor3.withOpacity(0.1),
                MyTheme.linercolor1.withOpacity(0.1),
                MyTheme.linercolor2.withOpacity(0.1),
              ],
            ),
          ),
          child: kIsWeb
              ? Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.04, right: size.width * 0.01),
                        child: const HeaderContent(),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Image.asset(kHeroImgPng, fit: BoxFit.contain)),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.04, right: size.width * 0.01),
                      child: const HeaderContent(),
                    ),
                    Image.asset(kHeroImgPng, fit: BoxFit.contain)
                  ],
                ));
    });
  }
}

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText.rich(
            TextSpan(
              style: kIsWeb
                  ? textTheme.headlineLarge
                  : textTheme.headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w800),
              children: [
                TextSpan(
                  text: headingText1,
                  style: kIsWeb
                      ? TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis)
                      : textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                ),
                TextSpan(
                  text: headingText2,
                  style: kIsWeb
                      ? TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.kSecondaryColor,
                        )
                      : textTheme.headlineMedium?.apply(
                          fontWeightDelta: 2,
                          fontSizeFactor: 0.8,
                          color: MyTheme.kSecondaryColor,
                        ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            subtitle1,
            style: kIsWeb
                ? TextStyle(
                    fontWeight: FontWeight.w600,
                    color: MyTheme.kPrimaryColor.withOpacity(0.8))
                : textTheme.bodyMedium?.apply(
                    fontWeightDelta: 2,
                    color: MyTheme.kPrimaryColor.withOpacity(0.8)),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            decoration: BoxDecoration(
              color: MyTheme.kSecondaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.015, vertical: size.height * 0.015),
            child: ShaderMask(
              shaderCallback: ((bounds) => const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF0646FF),
                        Color(0xFF6877FF),
                        Color(0xFF2B1AE9)
                      ]).createShader(bounds)),
              child: Text(
                  "For the first 100 Users app will remain Free for a Lifetime.",
                  style: kIsWeb
                      ? textTheme.bodyMedium?.copyWith(
                          color: MyTheme.kSecondaryColor,
                          fontWeight: FontWeight.w600)
                      : textTheme.bodySmall?.apply(
                          fontWeightDelta: 2,
                          color: MyTheme.kSecondaryColor,
                        )),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          kIsWeb
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          html.window.open(
                              "https://docs.google.com/forms/d/e/1FAIpQLSdLeHFaFjERl59_EODV_s3vZeaZLsymXQDI0yb4JDDsQ7J4rg/viewform",
                              "_blank");
                        },
                        child: Text("Fill form and win",
                            style: textTheme.bodyMedium?.copyWith(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600))),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const GoodbyeTextAndPlayStoreIcons()
                  ],
                )
              // const PhoneNumberForm(
              //     showPhoneForm: true,
              //   )

              : const SizedBox()
        ],
      );
    });
  }
}

class PhoneNumberForm extends StatelessWidget {
  const PhoneNumberForm({
    super.key,
    this.showPhoneForm = false,
  });

  final bool showPhoneForm;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        showPhoneForm
            ? Wrap(
                alignment: WrapAlignment.center,
                children: [
                  PhoneForm(
                    formWidth: size.width * 0.2,
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.008,
                          vertical: size.height * 0.030,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(08)),
                      ),
                      onPressed: () {},
                      child: const Text("Get Started")),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(
          height: size.height * 0.03,
        ),
        const GoodbyeTextAndPlayStoreIcons(),
      ],
    );
  }
}
