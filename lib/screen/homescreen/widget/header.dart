import 'package:darzee_web/constants/size_constant.dart/size_constant.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
import '../homescreen.dart';



/// The Header and HeaderContent classes are used to display the header content of a responsive app,
/// with different UI elements rendered based on the device screen type.


class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveBuilder(builder: (context, sizingInformation) {
     /// Checking if the device screen type is a desktop or not, and assigning the result to the boolean
     /// variable `kIsWeb`. This is used to conditionally render different UI elements based on the
     /// device screen type.
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
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              transform: GradientRotation(-0.5),
              colors: [
                MyTheme.linercolor3,
                MyTheme.linercolor1,
                MyTheme.linercolor2,
              ],
            ),
          ),
          child:/// This code is conditionally rendering different UI elements based on the device
          /// screen type. If the device screen type is a desktop, it will render a `Row` widget
          /// with two child widgets: an `Expanded` widget containing a `HeaderContent` widget and
          /// another `Expanded` widget containing an `Image.asset` widget. If the device screen
          /// type is not a desktop, it will render a `Column` widget with two child widgets: a
          /// `Padding` widget containing a `HeaderContent` widget and an `Image.asset` widget.
          /// The `kIsWeb` boolean variable is used to determine which widget to render.
           kIsWeb
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



/// The HeaderContent class is a stateless widget that displays the header content of a responsive app,
/// including a title, subtitle, and a promotional message.

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
      return /// This code is defining the UI elements for the header content of a responsive app. It
      /// includes a `Column` widget with several child widgets, including a `RichText` widget
      /// for the title and subtitle, a `Text` widget for additional text, a `Container` widget
      /// with a promotional message, and a `PhoneNumberForm` widget (if the device screen type
      /// is a desktop). The `mainAxisAlignment` property is set to `MainAxisAlignment.center` to
      /// center the content vertically, and the `crossAxisAlignment` property is set to
      /// `CrossAxisAlignment.start` to align the content to the left. The `kIsWeb` boolean
      /// variable is used to conditionally render different styles and widgets based on the
      /// device screen type.
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            softWrap: true,
            text: TextSpan(
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
              ? const PhoneNumberForm(
                  showPhoneForm: true,
                )
              : const SizedBox()
        ],
      );
    });
  }
}
