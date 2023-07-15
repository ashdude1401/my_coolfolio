import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screen/about_us_screen/about_us_screen.dart';
import 'screen/faq_screen/faq_screen.dart';
import 'screen/homescreen/homescreen.dart';
import 'screen/privacy_policy_screen/privacy_policy_screen.dart';
import 'screen/terms_condition_screen/terms_condition_screen.dart';
import 'utils/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
  setPathUrlStrategy();
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Darzee App',
        theme: MyTheme.lightTheme(context),
        debugShowCheckedModeBanner: false,
        // home: const MyHomePage(),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          AboutUsPage.routeName: (context) => const AboutUsPage(),
          FaqScreen.namedRoute: (context) => const FaqScreen(),
          PrivacyPolicyScreen.namedRoute: (context) =>
              const PrivacyPolicyScreen(),
          TermsConditionScreen.namedRoute: (context) =>
              const TermsConditionScreen(),
        });
  }
}

/// This is a stateless widget representing the home page of an app that returns a HomeScreen widget.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
