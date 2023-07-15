
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../common_components/darawer.dart';
import '../../constants/image_strings.dart/image_string.dart';
import '../../constants/size_constant.dart/size_constant.dart';
import 'dart:html' as html;

import '../homescreen/homescreen.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final kIsWeb =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop;
      final Size size = MediaQuery.of(context).size;
      return SelectionArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
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
                            onPressed: () =>
                                Scaffold.of(context).openEndDrawer(),
                            icon: Icon(Icons.menu),
                          ),
                        ),
                ],
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: kIsWeb ? size.width * 0.06 : kMobilePadding,
              vertical: kIsWeb ? size.height * 0.06 : kMobilePadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF4C7AFF).withOpacity(0.05),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Us',
                        style: GoogleFonts.inter(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF323232),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            _buildParagraph(
                              'At Darzee, we are on a mission to revolutionize the tailoring industry by integrating technology and empowering tailors with innovative tools. Our vision is to give Indian tailors access to global customers and provide the international affluent consumer with an option for cost-effective, tailor-made custom clothing.',
                            ),
                            _buildParagraph(
                              'We understand that the traditional tailoring industry faces various challenges in today\'s fast-paced digital world. That\'s why we have developed a mobile-first CRM platform specifically designed for tailors. Our platform enables tailors to efficiently manage their business operations, enhance customer experience, and grow their businesses in a rapidly changing market.',
                            ),
                            _buildParagraph(
                              'Through our powerful and user-friendly platform, tailors can streamline their order management, improve communication with customers, and track inventory with ease. We believe in the transformative power of technology, and we are committed to equipping tailors with the digital tools they need to succeed.',
                            ),
                            _buildParagraph(
                              'Darzee is not just about embracing technology; it\'s about preserving the craftsmanship and artistry of Indian tailoring while making it accessible to a global audience. We are passionate about showcasing the exceptional skills of Indian tailors and connecting them with customers worldwide who appreciate personalized, tailor-made clothing.',
                            ),
                            _buildParagraph(
                              'Our platform aims to bridge the gap between tailors and customers, providing a seamless and convenient experience for both parties. By leveraging our platform, tailors can reach new markets and expand their businesses beyond geographical boundaries, while customers can enjoy the convenience and quality of custom-made clothing from talented Indian tailors.',
                            ),
                            _buildParagraph(
                              'Join us on this exciting journey as we reshape the tailoring industry, blend tradition with technology, and create a global marketplace for tailor-made fashion. Together, let\'s redefine the way people think about custom clothing and empower tailors to thrive in a digital age.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 16.0),
                // const FaqScreen(),
                // const SizedBox(height: 32.0),
                // const PrivacyPolicyScreen(),
                // const SizedBox(height: 32.0),
                // const TermsConditionScreen(),
              ],
            ),
          ),
        ),
      );
    });
  }
}

final List<Map<String, String>> termsAndConditionsList = [
  {
    'title': '1. Acceptance of Terms:',
    'content':
        'By downloading, installing, or using Darzee App, you agree to comply with these terms and conditions. If you do not agree with any part of these terms, please refrain from using the app.',
  },
  {
    'title': '2. License:',
    'content':
        'Darzee App grants you a limited, non-exclusive, non-transferable, revocable license to use the app for personal or business purposes. This license is subject to compliance with these terms and conditions.',
  },
  {
    'title': '3. Account Creation:',
    'content':
        'In order to use certain features of Darzee App, you may be required to create an account. You must provide accurate and complete information during the registration process and keep your account credentials confidential.',
  },
  {
    'title': '4. User Responsibilities:',
    'content':
        'You are solely responsible for maintaining the confidentiality of your account and all activities that occur under your account. You agree not to use Darzee App for any illegal or unauthorized purposes and to comply with all applicable laws and regulations.',
  },
  {
    'title': '5. Intellectual Property:',
    'content':
        'All intellectual property rights in Darzee App, including but not limited to trademarks, logos, graphics, and software, are owned by Darzee App or its licensors. You shall not copy, modify, distribute, or reproduce any part of the app without prior written consent.',
  },
  {
    'title': '6. Privacy Policy:',
    'content':
        'By using Darzee App, you agree to the collection, use, and storage of your personal information as outlined in our Privacy Policy. We take privacy seriously and implement measures to protect your data.',
  },
  {
    'title': '7. Third-Party Services:',
    'content':
        'Darzee App may integrate with third-party services or websites. Your use of these services is subject to their respective terms and conditions. We are not responsible for the content or actions of third-party services.',
  },
  {
    'title': '8. Limitation of Liability:',
    'content':
        'Darzee App shall not be liable for any direct, indirect, incidental, consequential, or exemplary damages arising out of or in connection with the use or inability to use the app. This includes any loss of data, business, or profits.',
  },
  {
    'title': '9. Modifications:',
    'content':
        'Darzee App reserves the right to modify or discontinue any part of the app, including features, pricing, and availability, at any time without prior notice. We may also update these terms and conditions from time to time, and it is your responsibility to review them periodically.',
  },
  {
    'title': '10. Governing Law:',
    'content':
        'These terms and conditions shall be governed by and construed in accordance with the laws of India]. Any disputes arising out of or relating to these terms shall be subject to the exclusive jurisdiction of the courts in India.',
  },
  {
    'content':
        'By using Darzee App, you acknowledge that you have read, understood, and agreed to these terms and conditions. If you have any questions or concerns, please contact us.',
  },
];

List<Map<String, String>> privacyPolicyList = [
  {
    'title': 'Privacy Policy for Darzee App:',
    'content':
        'At Darzee App, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect the information you provide when using Darzee App. By using the app, you consent to the practices described in this policy.',
  },
  {
    'title': '1. Information We Collect:',
    'content':
        '- Personal Information: When you create an account or use certain features of Darzee App, we may collect personal information such as your name, email address, contact details, and other relevant information.\n- Usage Data: We may collect information about your interactions with the app, including your device information, IP address, browsing activity, and app usage statistics.',
  },
  {
    'title': '2. Use of Information:',
    'content':
        '- We use the information we collect to provide, maintain, and improve Darzee App and its features.\n- Personal information is used to identify you, communicate with you, and provide tailored services.\n- Usage data helps us analyze app usage patterns, troubleshoot issues, and enhance user experience.',
  },
  {
    'title': '3. Information Sharing:',
    'content':
        '- We may share your personal information with third-party service providers who assist us in operating and maintaining Darzee App.\n- We may disclose your information if required by law, legal process, or governmental request.\n- We will not sell, rent, or share your personal information with third parties for marketing purposes without your consent.',
  },
  {
    'title': '4. Data Security:',
    'content':
        '- We implement reasonable security measures to protect your personal information from unauthorized access, disclosure, or alteration.\n- However, please note that no data transmission over the internet or storage system is 100% secure. We cannot guarantee the absolute security of your information.',
  },
  {
    'title': '5. Data Retention:',
    'content':
        '- We will retain your personal information for as long as necessary to fulfill the purposes outlined in this Privacy Policy.\n- You can request the deletion of your personal information by contacting us, subject to any legal obligations.',
  },
  {
    'title': '6. Third-Party Links:',
    'content':
        '- Darzee App may contain links to third-party websites or services. We are not responsible for the privacy practices or content of these websites. We encourage you to review their respective privacy policies.',
  },
  {
    'title': '7. Children\'s Privacy:',
    'content':
        '- Darzee App is not intended for use by individuals under the age of 16. We do not knowingly collect personal information from children. If you believe we have inadvertently collected information from a child, please contact us to remove it.',
  },
  {
    'title': '8. Updates to Privacy Policy:',
    'content':
        '- We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. We encourage you to review the policy periodically for any updates.',
  },
];

final List<Map<String, String>> faqList = [
  {
    'question': 'What is Darzee App?',
    'answer':
        'Darzee App is a comprehensive mobile application designed specifically for tailors and boutique owners in India. It helps streamline their business operations, manage orders, customers, measurements, and more.',
  },
  {
    'question': 'How can I benefit from using Darzee App?',
    'answer':
        'By using Darzee App, you can digitize your tailoring business, enhance customer management, streamline order tracking, manage measurements efficiently, and improve overall productivity. It offers a range of features tailored to meet the unique needs of tailors and boutique owners.',
  },
  {
    'question': 'Is Darzee App available on Android and iOS devices only?',
    'answer':
        'Yes, Darzee App is currently available on Android and iOS smartphones and tablets. You can download the app from the respective app stores for your device.',
  },
  {
    'question': 'Can I use Darzee App on multiple devices?',
    'answer':
        'Yes, Darzee App allows you to use the same account and sync your data across multiple devices. You can access and manage your tailoring business from your smartphone and tablet simultaneously.',
  },
  {
    'question': 'How secure is my data on Darzee App?',
    'answer':
        'The security of your data is our top priority. Darzee App incorporates robust security measures to protect your information. We implement encryption protocols, secure cloud storage, and regular backups to ensure the confidentiality and integrity of your data.',
  },
  {
    'question': 'Is Darzee App free to use?',
    'answer':
        'Yes, currently Darzee App is absolutely free to use. However, please note that in the future, there may be a subscription fee for certain advanced features or additional services. We will notify our users in advance regarding any changes to the pricing structure.',
  },
  {
    'question': 'How can I get started with Darzee App?',
    'answer':
        'Getting started with Darzee App is easy! Simply visit our website darzeeapp.com and follow the instructions to download and install the app from the respective app stores. Once installed, you can create an account, set up your business profile, and start exploring the various features and functionalities. If you have any further questions or need assistance, feel free to reach out to our support team, who will be more than happy to help you.',
  },
];

const String privacyPolicyContent =
    'At Darzee App, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect the information you provide when using Darzee App. By using the app, you consent to the practices described in this policy.\n\n1. Information We Collect:\n   - Personal Information: When you create an account or use certain features of Darzee App, we may collect personal information such as your name, email address, contact details, and other relevant information.\n   - Usage Data: We may collect information about your interactions with the app, including your device information, IP address, browsing activity, and app usage statistics.\n\n2. How We Use Your Information:\n   - We use the collected information to provide and improve our services, personalize your experience, communicate with you, and respond to your inquiries and support requests.\n   - We may also use the information to analyze trends, monitor usage patterns, and enhance the overall functionality and performance of Darzee App.\n\n[... Privacy Policy continues ...]';

const String termsAndConditionsContent =
    'Please read these Terms and Conditions carefully before using Darzee App.\n\n1. Acceptance of Terms:\n   - By using Darzee App, you agree to comply with and be bound by these Terms and Conditions. If you do not agree to these terms, you should not use the app.\n\n2. License:\n   - Darzee App grants you a limited, non-exclusive, non-transferable license to use the app for your personal or commercial use. You may not modify, distribute, or sell any part of the app or its content without prior written consent.\n\n3. User Obligations:\n   - You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.\n   - You agree to use Darzee App for lawful purposes and not to engage in any activity that may interfere with or disrupt the app\'s functionality or violate any applicable laws.\n\n[... Terms and Conditions continues ...]';

Widget _buildParagraph(String text) {
  return Container(
    margin: const EdgeInsets.only(bottom: 16.0),
    child: Text(
      text,
      style: GoogleFonts.inter(
        fontSize: 16.0,
        color: const Color(0xFF323232),
      ),
    ),
  );
}
