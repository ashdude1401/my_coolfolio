import 'package:darzee_web/constants/size_constant.dart/size_constant.dart';
import 'package:darzee_web/screen/about_us_screen/about_us_screen.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container1.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container2.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container3.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container4.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container5.dart';
import 'package:darzee_web/screen/homescreen/widget/footer.dart';
import 'package:darzee_web/screen/homescreen/widget/header.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/image_strings.dart/image_string.dart';
import '../../constants/text_constant.dart/text_constant.dart';
import '../../utils/theme/my_theme.dart';

import 'dart:html' as html;

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final kIsWeb = sizingInformation.isDesktop;
        return SelectionArea(
          child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: kIsWeb ? null : 0,
                title: Padding(
                  padding: EdgeInsets.only(
                    left: kIsWeb ? size.width * 0.035 : kMobilePadding,
                  ),
                  child: InkWell(
                    splashColor: Colors.white,
                    hoverColor: Colors.white,
                    onTap: () =>
                        Navigator.pushNamed(context, HomeScreen.routeName),
                    child: SvgPicture.asset(
                      kHeaderIconImg,
                    ),
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      kIsWeb
                          ? Row(
                              children: [
                                InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: () => Navigator.pushNamed(
                                      context, HomeScreen.routeName),
                                  child: Text("Home",
                                      style: textTheme.titleMedium?.copyWith(
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: () => Navigator.pushNamed(
                                      context, AboutUsPage.routeName),
                                  child: Text("About",
                                      style: textTheme.titleMedium?.copyWith(
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                // InkWell(
                                //   hoverColor: Colors.transparent,
                                //   onTap: () => Navigator.pushNamed(
                                //       context, AboutUsPage.routeName),
                                //   child: Text("Support",
                                //       style: textTheme.titleMedium?.copyWith(
                                //           fontWeight: FontWeight.w500)),
                                // ),
                                // SizedBox(
                                //   width: size.width * 0.03,
                                // ),
                              ],
                            )
                          : const SizedBox(),
                      Padding(
                        padding: EdgeInsets.only(
                          right: size.width * 0.04,
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              html.window.open(
                                  "https://docs.google.com/forms/d/e/1FAIpQLSdLeHFaFjERl59_EODV_s3vZeaZLsymXQDI0yb4JDDsQ7J4rg/viewform",
                                  "_blank");
                            },
                            child: Text("Fill Form",
                                style: textTheme.bodyMedium?.copyWith(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w700))),
                      ),
                    ],
                  ),
                ],
              ),
              body: const HomeScreenBody()),
        );
      },
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Header(),
          ContentContainer1(),
          ContentContainer2(),
          ContentContainer3(),
          ContentContainer4(),
          ContentContainer5(),
          Footer(),
        ],
      ),
    );
  }
}

final List<SlidingCards> cards = [
  const SlidingCards(
      icon: kInsightIcon,
      text: kInsightAtGlance,
      desc: kInsightAtGlanceDesc,
      heroImg: kHeroImg41Png),
  const SlidingCards(
      icon: kInvoiceIcon,
      text: kShareInvoice,
      desc: kShareInvoiceDesc,
      heroImg: kHeroImg42Png),
  const SlidingCards(
      icon: kWhatsAppIcon,
      text: kOrderUpdateOnWhatsapp,
      desc: kOrderUpdateOnWhatsappDesc,
      heroImg: kHeroImg43Png),
];

class SlidingCards extends StatelessWidget {
  const SlidingCards({
    super.key,
    required this.icon,
    required this.text,
    required this.desc,
    required this.heroImg,
  });

  final String icon;
  final String text;
  final String desc;
  final String heroImg;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final bool kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return SelectionArea(
        child: Container(
            margin: kIsWeb
                ? EdgeInsets.symmetric(
                    horizontal: size.width * 0.05, vertical: 0)
                : EdgeInsets.only(
                    top: size.height * 0.05,
                  ),
            child: kIsWeb
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(icon),
                              Text(
                                text,
                                style: textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: MyTheme.kPrimaryColor),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Text(
                                desc,
                                style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyTheme.kPrimaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Image.asset(heroImg, fit: BoxFit.contain),
                      ),
                    ],
                  )
                : SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(icon),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          text,
                          style: textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: MyTheme.kPrimaryColor),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          desc,
                          style: textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: MyTheme.kPrimaryColor.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Image.asset(
                          heroImg,
                          fit: BoxFit.contain,
                          height: size.height * 0.42,
                        ),
                      ],
                    ),
                  )),
      );
    });
  }
}

class PhoneForm extends StatelessWidget {
  const PhoneForm({
    super.key,
    this.formWidth,
  });

  final double? formWidth;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: formWidth ?? size.width * 0.5,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.005,
        vertical: size.height * 0.003,
      ),
      child: Row(
        children: [
          Text("+91",
              style:
                  textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700)),
          Container(
            color: MyTheme.kPrimaryColor.withOpacity(0.27),
            width: 1,
            height: size.height * 0.03,
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.01,
            ),
          ),
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.justify,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter your mobile number",
                hintStyle: textTheme.bodyMedium?.copyWith(
                    color: MyTheme.kPrimaryColor.withOpacity(0.5),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.icon,
    required this.text,
    required this.desc,
  });

  final String icon;
  final String text;
  final String desc;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Container(
        width: kIsWeb ? size.width * 0.2 : double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.03,
          horizontal: kIsWeb ? size.width * 0.01 : size.width * 0.05,
        ),
        margin: kIsWeb
            ? EdgeInsets.zero
            : EdgeInsets.symmetric(
                vertical: size.height * 0.01,
              ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFFFFFFF),
          boxShadow: kIsWeb
              ? null
              : [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
          border: Border.all(
            color: MyTheme.kPrimaryColor.withOpacity(0.04),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(icon),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(text,
                style: textTheme.titleMedium?.copyWith(
                    color: MyTheme.kPrimaryColor, fontWeight: FontWeight.w700)),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(desc,
                style: textTheme.bodySmall?.copyWith(
                    color: MyTheme.kPrimaryColor, fontWeight: FontWeight.w600)),
          ],
        ),
      );
    });
  }
}

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({
    super.key,
    required this.textTheme,
    required this.text,
    required this.desc,
    required this.icon,
    required this.color,
  });

  final TextTheme textTheme;
  final String text;
  final String desc;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Container(
        width: kIsWeb ? size.width * 0.2 : size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.72),
          color: color,
        ),
        padding: EdgeInsets.only(
            left: size.width * 0.018,
            right: size.width * 0.018,
            bottom: size.height * 0.022,
            top: size.height * 0.012),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(icon),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(text,
                style: textTheme.bodyMedium?.copyWith(
                    color: MyTheme.kPrimaryColor.withOpacity(0.8),
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(desc,
                softWrap: true,
                style: textTheme.bodySmall?.copyWith(
                    color: MyTheme.kPrimaryColor.withOpacity(0.5),
                    fontWeight: FontWeight.w600)),
          ],
        ),
      );
    });
  }
}
