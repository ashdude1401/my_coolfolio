import 'package:darzee_web/constants/size_constant.dart/size_constant.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container1.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container2.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container3.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container4.dart';
import 'package:darzee_web/screen/homescreen/widget/content_container5.dart';
import 'package:darzee_web/screen/homescreen/widget/footer.dart';
import 'package:darzee_web/screen/homescreen/widget/header.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/image_strings.dart/image_string.dart';
import '../../constants/text_constant.dart/text_constant.dart';
import '../../utils/theme/my_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final kIsWeb = sizingInformation.isDesktop;
        return Scaffold(
            appBar: AppBar(
              elevation: kIsWeb ? null : 0,
              title: Padding(
                padding: EdgeInsets.only(
                  left: kIsWeb ? size.width * 0.06 : kMobilePadding,
                ),
                child: SvgPicture.asset(
                  kHeaderIconImg,
                ),
              ),
              actions: [
                Row(
                  children: [
                    kIsWeb
                        ? Row(
                            children: [
                              Text("About", style: textTheme.titleMedium),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              Text("Support", style: textTheme.titleMedium),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                            ],
                          )
                        : const SizedBox(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: size.width * 0.04,
                      ),
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Login")),
                    ),
                  ],
                ),
              ],
            ),
            body: const HomeScreenBody());
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
      child: Expanded(
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
      ),
    );
  }
}

class TestemonialCard extends StatelessWidget {
  const TestemonialCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final kIsWeb = sizingInformation.isDesktop;
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: kIsWeb
              ? Stack(
                  children: [
                    Positioned(
                      bottom: size.height * 0.18,
                      left: size.width * 0.18,
                      child: CircleAvatar(
                        radius: size.width * 0.07,
                        backgroundColor:
                            const Color(0xFFFF4C7A).withOpacity(0.1),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.18,
                      right: size.width * 0.18,
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
                          vertical: size.height * 0.025,
                        ),
                        width: size.width <= 600
                            ? size.width * 0.8
                            : size.width * 0.6,
                        margin: EdgeInsets.only(
                          right: size.width * 0.02,
                          left: size.width * 0.02,
                          bottom: size.height * 0.18,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(kTestimonialImg1Png),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              kCustomerName,
                              softWrap: true,
                              style: textTheme.bodyLarge?.copyWith(
                                color: MyTheme.kPrimaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              kBoutique,
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                color: MyTheme.kPrimaryColor,
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
                              textScaleFactor: size.width <= 600 ? 0.8 : 1.2,
                              style: textTheme.bodyLarge?.copyWith(
                                fontFamily: GoogleFonts.mukta().fontFamily,
                                color: MyTheme.kPrimaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                    top: size.height * 0.025,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.15,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(kTestimonialImg1Png),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kCustomerName,
                        softWrap: true,
                        style: textTheme.bodyLarge?.copyWith(
                          color: MyTheme.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kBoutique,
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          color: MyTheme.kPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        kTestonomial,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: textTheme.bodyLarge?.copyWith(
                          fontFamily: GoogleFonts.mukta().fontFamily,
                          color: MyTheme.kPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}

final List<TestemonialCard> testemonialCards = [
  const TestemonialCard(),
  const TestemonialCard(),
  const TestemonialCard(),
];
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
      return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kIsWeb ? size.width * 0.05 : size.width * 0.05,
              vertical: kIsWeb ? 0 : size.height * 0.02),
          child: kIsWeb
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
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
                    const Spacer(),
                    Expanded(
                      child: Image.asset(heroImg, fit: BoxFit.contain),
                    ),
                  ],
                )
              : Column(
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
                    Image.asset(heroImg, fit: BoxFit.contain),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                  ],
                ));
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
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        showPhoneForm
            ? Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Expanded(
                    child: PhoneForm(
                      formWidth: size.width * 0.2,
                    ),
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
        Text(
          "Say goodbye to pen and paper. Sign up for Darzee today!",
          style: textTheme.bodySmall?.copyWith(
              color: MyTheme.kPrimaryColor.withOpacity(0.8),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: size.height * 0.08,
        ),
        Row(
          children: [
            SvgPicture.asset(
              kGooglePlayImg,
              height: size.height * 0.05,
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            SvgPicture.asset(
              kAppStoreImg,
              height: size.height * 0.05,
            ),
          ],
        ),
      ],
    );
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
        // height: size.height * 0.2,
        width: kIsWeb ? size.width * 0.2 : size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.72),
          color: color,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.012,
          vertical: size.height * 0.012,
        ),
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
