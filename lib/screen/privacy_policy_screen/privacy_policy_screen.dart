import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../about_us_screen/about_us_screen.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({
    super.key,
  });

  static const namedRoute = '/privacy_policy';

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
