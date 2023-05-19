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
      return Container(
        width: size.width,
        height: kIsWeb ? size.height * 0.99 : size.height * 0.9,
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.05,
          horizontal: size.width * 0.05,
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
                        height: size.height * 0.8,
                        width: size.width,
                        fit: BoxFit.cover,
                      )),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: kIsWeb ? size.height * 0.05 : size.height * 0.02,
                horizontal: kIsWeb ? size.width * 0.33 : size.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    kDownloadDarzee,
                    textAlign: TextAlign.center,
                    style: kIsWeb
                        ? textTheme.headlineSmall?.apply(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: const Color(0xFFFFFFFF),
                            fontWeightDelta: 2)
                        : textTheme.displaySmall?.apply(
                            fontSizeFactor: 0.6,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: MyTheme.kSecondaryColor,
                            fontWeightDelta: 2),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    kDownloadDarzedDesc,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: kIsWeb
                        ? textTheme.bodyLarge?.copyWith(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500)
                        : textTheme.bodyLarge?.copyWith(
                            color: MyTheme.kPrimaryColor,
                          ),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Wrap(
                    spacing: size.width * 0.01,
                    children: [
                      SvgPicture.asset(kGooglePlayImg,
                          height:
                              kIsWeb ? size.height * 0.055 : size.height * 0.05,
                          fit: BoxFit.cover),
                      SvgPicture.asset(
                        kAppStoreImg,
                        height:
                            kIsWeb ? size.height * 0.055 : size.height * 0.05,
                        fit: BoxFit.cover,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
