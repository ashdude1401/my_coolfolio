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

/// The above code is defining a HomeScreen widget and a HomeScreenBody widget in Dart language for a
/// Flutter application. The HomeScreen widget displays a header with "About", "Support" (only on web),
/// and "Login" button, and a body with various content containers and a footer. The HomeScreenBody
/// widget returns a SingleChildScrollView widget containing a Column of the content containers and a
/// footer.
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
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
                /// The above code is defining a widget that displays a row with "About" and "Support"
                /// text (only on web), and an elevated button with "Login" text. This widget is used as
                /// the header of a scaffold, and the body of the scaffold is a HomeScreenBody widget.
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

/// The HomeScreenBody class returns a SingleChildScrollView widget containing a Column of various
/// content containers and a footer.

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

/// The TestemonialCard class is a responsive widget that displays a customer testimonial with their
/// name, boutique, and a short message, along with two circular avatars on either side.
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
              ?

              /// The above code is creating a testimonial section with a background image and two
              /// circular avatars on the sides. The testimonial section is a centered container with a
              /// white background, containing an image, customer name, boutique name, and testimonial
              /// text. The code is using the Stack and Positioned widgets to position the avatars and
              /// the testimonial section. The SizedBox widget is used to constrain the size of the
              /// Stack widget.
              SizedBox(
                  child: Stack(
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
                  ),
                )
              :

              /// The above code is creating a container with a testimonial image, customer name,
              /// boutique name, and testimonial text. The container has a white background with
              /// rounded corners and a shadow effect. The content is centered vertically and
              /// horizontally within the container.
              Container(
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

/// The above code is creating a list of `SlidingCards` objects, each with an icon, text, description,
/// and hero image. These cards are likely used in a UI to display information or options to the user.
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

/// The SlidingCards class is a stateless widget that displays a card with an icon, text, description,
/// and hero image that can be displayed in a row or column depending on the device screen type.

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
    /// The above code is defining a `size` variable and a `textTheme` variable based on the `MediaQuery`
    /// and `Theme` of the current `context`. It is then using the `ResponsiveBuilder` widget to build
    /// the UI based on the `sizingInformation` provided by the `builder` function. Finally, it is
    /// checking if the `deviceScreenType` of the `sizingInformation` is a desktop to determine if the
    /// app is running on the web.

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
              ?

              /// The above code is creating a `Row` widget with two `Expanded` children. The first
              /// `Expanded` child contains a `Column` widget with an SVG icon, a headline text, a
              /// description text, and some spacing. The second `Expanded` child contains an `Image`
              /// widget with a hero image that fits within the available space. The
              /// `mainAxisAlignment` property of the `Row` widget is set to
              /// `MainAxisAlignment.spaceBetween` to evenly distribute the children along the
              /// horizontal axis. The `crossAxisAlignment` property of the `Column` widget is set to
              /// `CrossAxisAlignment.start` to
              Row(
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
              :

              /// The above code is creating a `Column` widget with several child widgets including an
              /// SVG icon, two `Text` widgets for displaying a title and description, an `Image`
              /// widget for displaying a hero image, and some `SizedBox` widgets for adding spacing
              /// between the child widgets. The `mainAxisAlignment` and `crossAxisAlignment`
              /// properties are used to align the child widgets within the `Column`.
              Column(
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

/// The PhoneNumberForm class is a stateless widget that displays a phone number form and a button to
/// get started, as well as text and images for downloading the app.

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

/// The PhoneForm class is a stateless widget that displays a form for entering a phone number with a
/// prefix and a text input field.

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

/// The CustomCard class is a stateless widget that displays an icon, text, and description in a
/// container with customizable dimensions and styling.

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

/// The `CustomGridItem` class is a stateless widget that displays an item with an icon, text, and
/// description in a container with a customizable color and size.

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
