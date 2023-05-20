import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
import '../homescreen.dart';


/// The above code defines two classes, ContentContainer1 and Content, which build a responsive
/// container with text and icons for a tailoring app.
/// The `ContentContainer1` class is a responsive container that displays either a row or a column of
/// content based on the device screen type.

class ContentContainer1 extends StatelessWidget {
  const ContentContainer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      return /// This code is defining a responsive container that displays either a row or a column of
      /// content based on the device screen type. The container has a height of 99% of the
      /// device screen height and a width of the device screen width. It also has padding of 4%
      /// of the device screen width and height on the top and bottom and left and right sides.
      Container(
          height: size.height * 0.99,
          width: size.width,
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.04,
            horizontal: size.width * 0.04,
          ),
          child: kIsWeb
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Image.asset(kHeroImg2Png,
                            height: size.height * 0.7, fit: BoxFit.contain)),
                    const Spacer(),
                    const Expanded(
                      flex: 3,
                      child: Content(),
                    )
                  ],
                )
              : const Content());
    });
  }
}

/// The Content class is a stateless widget that displays a column of text and icons with descriptions
/// in a grid format.
class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Builder(builder: (context) {
      return /// The `Column` widget is displaying a column of text and icons with descriptions in a
      /// grid format. It contains several child widgets such as `SvgPicture`, `Text`,
      /// `SizedBox`, and `Wrap`. The `crossAxisAlignment` property is set to
      /// `CrossAxisAlignment.start` which aligns the children to the left side of the column,
      /// while the `mainAxisAlignment` property is set to `MainAxisAlignment.center` which
      /// centers the children vertically in the column. The `Wrap` widgets contain
      /// `CustomGridItem` widgets which display icons and text with descriptions in a grid
      /// format.
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(kPeopleIcon),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              kSeamlesslyConnect,
              style: textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              kDiscoverOurTailoring,
              style: textTheme.bodyMedium?.copyWith(
                  color: MyTheme.kPrimaryColor.withOpacity(0.8),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Wrap(
              spacing: size.width * 0.02,
              children: [
                CustomGridItem(
                    textTheme: textTheme,
                    text: kRecordPayments,
                    desc: kRecordPaymentsDesc,
                    icon: kIndianRupeeIocon,
                    color: MyTheme.kSecondaryColor.withOpacity(0.05)),
                CustomGridItem(
                    textTheme: textTheme,
                    text: kRecordMeasurements,
                    desc: kRecordMeasurementsDesc,
                    icon: kMeasurmentIcon,
                    color: const Color(0xFFF5FCFF)),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Wrap(
              spacing: size.width * 0.02,
              children: [
                CustomGridItem(
                    textTheme: textTheme,
                    text: kKeepCustomerUpdated,
                    desc: kKeepCustomerUpdatedDesc,
                    icon: kPeopleTickIcon,
                    color: const Color(0xFFFFF9F5)),
                CustomGridItem(
                    textTheme: textTheme,
                    text: kDataSafety,
                    desc: kDataSafetyDesc,
                    icon: kShieldIcon,
                    color: const Color(0xFFF8FFF5)),
              ],
            ),
          ]);
    });
  }
}
