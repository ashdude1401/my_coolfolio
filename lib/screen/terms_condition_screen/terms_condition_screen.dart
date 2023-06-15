import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../about_us_screen/about_us_screen.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({
    super.key,
  });

  static const namedRoute = '/terms_condition';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: const Color(0xFFFFF9F5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terms of Service',
                  style: GoogleFonts.inter(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
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
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            termsAndConditionsList[index]['title']!,
                            style: GoogleFonts.inter(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF323232),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            termsAndConditionsList[index]['content']!,
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
