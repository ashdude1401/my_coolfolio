import 'package:darzee_web/common_components/darawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/image_strings.dart/image_string.dart';
import '../../constants/size_constant.dart/size_constant.dart';
import '../about_us_screen/about_us_screen.dart';
import '../homescreen/homescreen.dart';
import 'dart:html' as html;

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({
    super.key,
  });

  static const namedRoute = '/privacy_policy';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return Scaffold(
        endDrawer: drawer(),

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
              onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
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
                          onPressed: () => Scaffold.of(context).openEndDrawer(),
                          icon: Icon(Icons.menu),
                        ),
                      ),
              ],
            ),
          ],
        ),
        body: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(8.0),
          //   color: const Color(0xFFFFF9F5),
          // ),
          padding: const EdgeInsets.all(16.0),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: const Color(0xFFFFF9F5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Privacy Policy',
                      style: GoogleFonts.inter(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF323232),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Privacy Policy for Darzee App:',
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                        color: const Color(0xFF323232),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: privacyPolicyList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                privacyPolicyList[index]['title']!,
                                style: GoogleFonts.inter(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF323232),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                privacyPolicyList[index]['content']!,
                                style: GoogleFonts.inter(
                                  fontSize: 16.0,
                                  color: const Color(0xFF323232),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
