
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/image_strings.dart/image_string.dart';
import '../utils/theme/my_theme.dart';

class GoodbyeTextAndPlayStoreIcons extends StatelessWidget {
  const GoodbyeTextAndPlayStoreIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
