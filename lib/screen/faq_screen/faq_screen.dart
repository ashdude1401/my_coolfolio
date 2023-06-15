import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../about_us_screen/about_us_screen.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({
    super.key,
  });

  static const namedRoute = '/faq';

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: const Color(0xFFF5FCFF),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.1),
              blurRadius: 16.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(16.0),
        child: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FAQ',
                  style: GoogleFonts.inter(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF323232),
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Frequently Asked Questions (FAQs) for Darzee App:',
                  style: GoogleFonts.inter(
                    fontSize: 16.0,
                    color: const Color(0xFF323232),
                  ),
                ),
                const SizedBox(height: 16.0),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: faqList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${index + 1}. ${faqList[index]['question']}',
                            style: GoogleFonts.inter(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF323232),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            faqList[index]['answer']!,
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
