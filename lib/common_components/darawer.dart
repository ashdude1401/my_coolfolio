
import 'package:flutter/material.dart';

import '../screen/about_us_screen/about_us_screen.dart';
import '../screen/faq_screen/faq_screen.dart';
import '../screen/privacy_policy_screen/privacy_policy_screen.dart';
import '../screen/terms_condition_screen/terms_condition_screen.dart';

import 'dart:html' as html;
class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Darzee App',
              style: textTheme.headlineSmall,
            ),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.02),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text(
              'About Us',
              style: textTheme.bodyLarge,
            ),
            onTap: () {
              Navigator.pop(context);
              // Add your code to handle the selection here
              Navigator.pushNamed(context, AboutUsPage.routeName);
            },
          ),
          ListTile(
            title: Text('Support', style: textTheme.bodyLarge),
            onTap: () {
              Navigator.pop(context);
              // Add your code to handle the selection here
              html.window.open(
                  "https://chat.whatsapp.com/G01yEMv7ac02QKLKHw6tUS", "_blank");
            },
          ),
          ListTile(
            title: Text('FAQ',style: textTheme.bodyLarge,),
            onTap: () {
              Navigator.pop(context);
              // Add your code to handle the selection here
              Navigator.pushNamed(context, FaqScreen.namedRoute);
            },
          ),
          ListTile(
            title: Text('Privacy Policy',style: textTheme.bodyLarge,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, PrivacyPolicyScreen.namedRoute);
              // Add your code to handle the selection here
            },
          ),
          ListTile(
            title: Text('Terms of service',style: textTheme.bodyLarge,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, TermsConditionScreen.namedRoute);
              // Add your code to handle the selection here
            },
          ),
        ],
      ),
    );
  }
}
