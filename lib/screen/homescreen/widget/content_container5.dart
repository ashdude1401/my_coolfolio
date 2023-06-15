import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';

class ContentContainer5 extends StatelessWidget {
  const ContentContainer5({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return SelectionArea(
        child: Container(
            width: size.width,
            height: kIsWeb ? size.height * 0.8 : size.height * 0.5,
            padding: kIsWeb
                ? EdgeInsets.symmetric(
                    vertical: size.height * 0.05,
                    horizontal: size.width * 0.05,
                  )
                : EdgeInsets.symmetric(
                    vertical: size.height * 0.02,
                    horizontal: size.width * 0.02,
                  ),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: kIsWeb
                        ? Image.asset(
                            kHeroImg6Png,
                            height: size.height * 0.8,
                            width: size.width,
                            fit: BoxFit.contain,
                          )
                        : Image.asset(
                            kHeroImgMobile6Png,
                            height: size.height * 0.45,
                            width: size.width,
                            fit: BoxFit.cover,
                          )),
                kIsWeb
                    ? Container(
                        margin: EdgeInsets.symmetric(
                          vertical: size.height * 0.05,
                          horizontal: size.width * 0.3,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(kDownloadDarzee,
                                textAlign: TextAlign.center,
                                style: textTheme.headlineMedium?.apply(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: const Color(0xFFFFFFFF),
                                    fontWeightDelta: 2)),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(kDownloadDarzedDesc,
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: textTheme.bodyLarge?.copyWith(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: size.height * 0.08,
                            ),
                            Wrap(
                              spacing: size.width * 0.01,
                              children: [
                                SvgPicture.asset(kGooglePlayImg,
                                    height: kIsWeb
                                        ? size.height * 0.055
                                        : size.height * 0.05,
                                    fit: BoxFit.cover),
                                SvgPicture.asset(
                                  kAppStoreImg,
                                  height: kIsWeb
                                      ? size.height * 0.055
                                      : size.height * 0.05,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(
                          vertical: size.height * 0.1,
                          horizontal: kIsWeb ? size.width * 0.33 : 0,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                kDownloadDarzee,
                                textAlign: TextAlign.center,
                                style: textTheme.displaySmall?.apply(
                                    fontSizeFactor: 0.6,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: MyTheme.kSecondaryColor,
                                    fontWeightDelta: 2),
                              ),
                              SizedBox(
                                height: size.width <= 280
                                    ? size.height * 0.01
                                    : size.width * 0.01,
                              ),
                              Text(
                                kDownloadDarzedDesc,
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: textTheme.bodyLarge?.copyWith(
                                    color: const Color(0xFF141A2D),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: size.width <= 280
                                    ? size.width * 0.03
                                    : size.width * 0.08,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(kGooglePlayImg,
                                      height: size.width <= 280
                                          ? size.height * 0.04
                                          : size.height * 0.05,
                                      fit: BoxFit.cover),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  SvgPicture.asset(
                                    kAppStoreImg,
                                    height: size.width <= 280
                                        ? size.height * 0.04
                                        : size.height * 0.05,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              )
                            ]),
                      )
              ],
            )),
      );
    });
  }
}
