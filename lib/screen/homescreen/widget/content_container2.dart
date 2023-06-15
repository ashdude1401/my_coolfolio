import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
import '../homescreen.dart';

import 'dart:html' as html;

class ContentContainer2 extends StatelessWidget {
  const ContentContainer2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return SelectionArea(
        child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
            horizontal: size.width * 0.02,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyTheme.kSecondaryColor.withOpacity(0.04),
                ),
                padding: EdgeInsets.only(
                  top: size.height * 0.05,
                  right: size.width * 0.05,
                  left: size.width * 0.05,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: kIsWeb ? size.width * 0.04 : 0,
                ),
                child: kIsWeb
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: Content(),
                          ),
                          const Spacer(),
                          Expanded(
                            child: Image.asset(kHeroImg3Png, fit: BoxFit.cover),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          const Content(),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Image.asset(kHeroImg3Png, fit: BoxFit.cover),
                        ],
                      ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Wrap(
                spacing: size.width * 0.02,
                alignment: WrapAlignment.spaceBetween,
                children: const [
                  CustomCard(
                      icon: kMenuIcon,
                      text: kPowerfulDashboard,
                      desc: kPowerfulDashboardDesc),
                  CustomCard(
                      icon: kSheetTickIcon,
                      text: kEasilyManageOrders,
                      desc: kEasilyManageOrdersDesc),
                  CustomCard(
                      icon: kPeoplePayment,
                      text: kPaymentTracing,
                      desc: kPaymentTracingDesc)
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              kIsWeb
                  ? Wrap(
                      spacing: size.width * 0.02,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            html.window.open(
                                "https://docs.google.com/forms/d/e/1FAIpQLSdLeHFaFjERl59_EODV_s3vZeaZLsymXQDI0yb4JDDsQ7J4rg/viewform",
                                "_blank");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.008,
                              vertical: size.height * 0.030,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(08)),
                          ),
                          child: Text("Fill Form and Win",
                              style: textTheme.bodyMedium?.copyWith(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600)),
                        )
                        // PhoneForm(
                        //   formWidth: size.width * 0.2,
                        // ),
                        // ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //     padding: EdgeInsets.symmetric(
                        //       horizontal: size.width * 0.008,
                        //       vertical: size.height * 0.030,
                        //     ),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(08)),
                        //   ),
                        //   onPressed: () {},
                        //   child: const Text("Get Started"),
                        // ),
                      ],
                    )
                  : Column(
                      children: [
                        // const PhoneForm(
                        //   formWidth: double.infinity,
                        // ),
                        // SizedBox(
                        //   height: size.height * 0.02,
                        // ),
                        SizedBox(
                          width: size.width * 0.5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(08)),
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://docs.google.com/forms/d/e/1FAIpQLSdLeHFaFjERl59_EODV_s3vZeaZLsymXQDI0yb4JDDsQ7J4rg/viewform",
                                  "_blank");
                            },
                            child: Text("Fill Form and Win",
                                style: textTheme.bodyMedium?.copyWith(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600)),
                          ),

                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     padding: EdgeInsets.symmetric(
                          //       vertical: size.height * 0.02,
                          //     ),
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(08)),
                          //   ),
                          //   onPressed: () {},
                          //   child: const Text("Get Started"),
                          // ),
                        ),
                      ],
                    ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Say goodbye to pen and paper. Sign up for Darzee today!",
                style: textTheme.bodySmall?.copyWith(
                    color: MyTheme.kPrimaryColor.withOpacity(0.8),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    kGooglePlayImg,
                    height: size.width <= 280
                        ? size.height * 0.04
                        : size.height * 0.05,
                  ),
                  SizedBox(
                    width: kIsWeb ? size.width * 0.01 : size.width * 0.03,
                  ),
                  SvgPicture.asset(
                    kAppStoreImg,
                    height: size.width <= 280
                        ? size.height * 0.04
                        : size.height * 0.05,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(kMultiligualIcon),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            kMultiLingualSupport,
            style:
                textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Wrap(
            spacing: size.width * 0.01,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kIsWeb ? size.width * 0.01 : size.width * 0.045,
                  vertical: kIsWeb ? size.height * 0.005 : size.height * 0.012,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: MyTheme.kPrimaryColor.withOpacity(0.07),
                  ),
                ),
                child: Text(
                  "Hindi",
                  style: textTheme.bodyMedium?.copyWith(
                      color: MyTheme.kSecondaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kIsWeb ? size.width * 0.01 : size.width * 0.1,
                  vertical: kIsWeb ? size.height * 0.005 : size.height * 0.2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: MyTheme.kPrimaryColor.withOpacity(0.07),
                  ),
                ),
                child: Text(
                  "Punjabi",
                  style: textTheme.bodyMedium?.copyWith(
                      color: MyTheme.kSecondaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kIsWeb ? size.width * 0.01 : size.width * 0.045,
                  vertical: kIsWeb ? size.height * 0.005 : size.height * 0.012,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: MyTheme.kPrimaryColor.withOpacity(0.07),
                  ),
                ),
                child: Text(
                  "English",
                  style: textTheme.bodyMedium?.copyWith(
                      color: MyTheme.kSecondaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(kMultiLingualSupportdesc,
              softWrap: true,
              style: textTheme.bodyLarge?.copyWith(
                  color: (kIsWeb == true)
                      ? MyTheme.kPrimaryColor.withOpacity(0.7)
                      : MyTheme.kPrimaryAccentColor.withOpacity(0.7),
                  fontWeight: FontWeight.w600)),
        ]);
  }
}
