import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../constants/image_strings.dart/image_string.dart';
import '../../../constants/text_constant.dart/text_constant.dart';
import '../../../utils/theme/my_theme.dart';
import '../homescreen.dart';

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
      return Container(
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

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Builder(builder: (context) {
      return Column(
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
