import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../../common_components/darawer.dart';
import '../../constants/image_strings.dart/image_string.dart';
import '../../constants/size_constant.dart/size_constant.dart';
import '../../constants/text_constant.dart/text_constant.dart';
import '../../utils/theme/my_theme.dart';

import 'dart:html' as html;

import '../about_us_screen/about_us_screen.dart';
import 'widget/content_container1.dart';
import 'widget/content_container2.dart';
import 'widget/content_container3.dart';
import 'widget/content_container4.dart';
import 'widget/content_container5.dart';
import 'widget/footer.dart';
import 'widget/header.dart';

// import '../about_us_screen/about_us_screen_new.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });
  static const routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      lowerBound: 0,
      upperBound: 1,
    );
    animationController.repeat(reverse: true);

    animationController.addListener(_markDirty);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  void _markDirty() {
    setState(() {});
  }

  static const double borderWidth = 3;
  static const double cornerRadius = 10;
  static const Color borderColor = MyTheme.kPrimaryColor;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final kIsWeb = sizingInformation.isDesktop;
        return SelectionArea(
          child: Scaffold(
              backgroundColor: MyTheme.linercolor4,
              endDrawer: drawer(),
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                elevation:  0,
                title: Padding(
                  padding: EdgeInsets.only(
                    left: kIsWeb ? size.width * 0.035 : kMobilePadding,
                  ),
                  child: InkWell(
                    splashColor: Colors.white,
                    hoverColor: MyTheme.kPrimaryAccentColor,
                    onTap: () =>
                        Navigator.pushNamed(context, HomeScreen.routeName),
                    child: BorderedBox(
                      text: "Ashdude😎",
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            cornerRadius * animationController.value),
                        side: BorderSide(
                            color: borderColor,
                            width: borderWidth,
                            strokeAlign: (animationController.value * 2) - 1),
                      ),
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
                                  child: Text("127.0.0.1",
                                      style: textTheme.headlineMedium?.copyWith(
                                          color: Color(0xFFBABABA),
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
                                      style: textTheme.headlineMedium?.copyWith(
                                          color: Color(0xFFBABABA),
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                              ],
                            )
                          : const SizedBox(),
                      kIsWeb
                          ? Padding(
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
                            )
                          : Builder(
                              builder: (context) => IconButton(
                                onPressed: () =>
                                    Scaffold.of(context).openEndDrawer(),
                                icon: Icon(Icons.menu),
                              ),
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

class BorderedBox extends StatelessWidget {
  const BorderedBox({super.key, required this.shape, required this.text});

  final ShapeBorder shape;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: ShapeDecoration(
        // color: MyTheme.kPrimaryAccentColor,
        shape: shape,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFFBABABA),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
