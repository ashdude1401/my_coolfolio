import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../../../common_components/goodbye_text_playstore_icons.dart';
import '../../../constants/image_strings.dart/image_string.dart';
// import '../../../constants/size_constant.dart/size_constant.dart';
import '../../../constants/size_constant.dart/size_constant.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
import '../homescreen.dart';

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
          // height: kIsWeb ? size.height * 0.99 : null,
          width: size.width,
          // padding: EdgeInsets.symmetric(
          //     vertical: size.height * 0.04,
          //     horizontal: kIsWeb ? 0.0 : kMobilePadding),
          padding: EdgeInsets.only(
            left: kIsWeb ? size.width * 0.035 : kMobilePadding,
            right: kIsWeb ? size.width * 0.035 : kMobilePadding,
            top: size.height * 0.12,
            bottom: size.height * 0.12,
          ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.04, right: size.width * 0.01),
                        child: const HeaderContent(),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Expanded(
                        flex: 2,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              kHeroImgPng,
                              fit: BoxFit.cover,
                            ))),
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

      final headerTextThemeStyle = kIsWeb
          ? Theme.of(context).textTheme.displayLarge?.copyWith(
              color: MyTheme.kPrimaryColor, fontWeight: FontWeight.w600)
          : textTheme.displayLarge?.apply(
              fontWeightDelta: 2,
              color: MyTheme.kPrimaryColor,
            );
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi, I'm ", style: headerTextThemeStyle),
          SizedBox(
            height: size.height * 0.02,
          ),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('Ashdude 8-)',
                textStyle:
                    headerTextThemeStyle?.copyWith(color: MyTheme.linercolor3),
                speed: Duration(milliseconds: 100)),
            TyperAnimatedText('a Coder 🧑‍💻',
                textStyle:
                    headerTextThemeStyle?.copyWith(color: Color(0xFF68ACB0)),
                speed: Duration(milliseconds: 100)),
            TyperAnimatedText('a developer ⚒️',
                textStyle:
                    headerTextThemeStyle?.copyWith(color: Color(0xFFBE9BE5)),
                speed: Duration(milliseconds: 100)),
            TyperAnimatedText('a born explorer 🌏',
                textStyle:
                    headerTextThemeStyle?.copyWith(color: Color(0xFFDA77D6)),
                speed: Duration(milliseconds: 100)),
            TyperAnimatedText('a curious guy🤔',
                textStyle: headerTextThemeStyle?.copyWith(
                    color: MyTheme.kPrimaryAccentColor),
                speed: Duration(milliseconds: 100)),
          ]),
          // Text(
          //   headingText1,
          //   style: kIsWeb
          //       ? Theme.of(context).textTheme.displayLarge?.copyWith(
          //           color: MyTheme.kPrimaryColor, fontWeight: FontWeight.w600)
          //       : textTheme.displayLarge?.apply(
          //           fontWeightDelta: 2,
          //           color: MyTheme.kPrimaryColor,
          //         ),
          // ),
          // SizedBox(
          //   height: size.height * 0.02,
          // ),
          // Text(
          //   headingText2,
          //   softWrap: true,
          //   style: kIsWeb
          //       ? Theme.of(context).textTheme.displaySmall?.copyWith(
          //           color: MyTheme.kPrimaryColor, fontWeight: FontWeight.w600)
          //       : textTheme.displayMedium?.apply(
          //           fontWeightDelta: 2,
          //           color: MyTheme.kPrimaryColor,
          //         ),
          // ),
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
