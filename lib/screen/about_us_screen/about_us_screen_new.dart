// import 'package:flutter/foundation.dart';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/image_strings.dart/image_string.dart';
import '../../constants/size_constant.dart/size_constant.dart';
import '../homescreen/homescreen.dart';
import 'about_us_screen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      final size = MediaQuery.of(context).size;
      final textTheme = Theme.of(context).textTheme;
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap: () => Navigator.pushNamed(
                                context, HomeScreen.routeName),
                            child: Text("Home",
                                style: textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          InkWell(
                            hoverColor: Colors.transparent,
                            onTap: () => Navigator.pushNamed(
                                context, AboutUsPage.routeName),
                            child: Text("About",
                                style: textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w500)),
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
      );
    });
  }
}
