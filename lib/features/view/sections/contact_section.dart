import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/text_theme.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchURL(Uri url) async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12), // Border radius
          boxShadow: [
            BoxShadow(
              color: Colors.white, // Shadow color
              offset: const Offset(0, 2), // Shadow offset
              blurRadius: 4, // Shadow blur radius
              spreadRadius: 1, // Shadow spread radius
            ),
          ],
        ),
        child: SectionContainer(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Contact Me',
                  style: AppTextTheme.bodyLarge(size: 35),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 20,
              ),

              // Email Link
              RichText(
                text: TextSpan(
                  style: AppTextTheme.bodySmall(),
                  children: [
                    const TextSpan(text: 'Email: '),
                    TextSpan(
                      text: 'ziad.w.khedr@gmail.com',
                      style: AppTextTheme.bodySmall().copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 1,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => _launchURL(Uri.parse(
                            'https://mail.google.com/mail/?view=cm&fs=1&to=ziad.w.khedr@gmail.com')),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // GitHub Link
              RichText(
                text: TextSpan(
                  style: AppTextTheme.bodySmall(),
                  children: [
                    const TextSpan(text: 'GitHub: '),
                    TextSpan(
                      text: 'ZyadWKhedr',
                      style: AppTextTheme.bodySmall().copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 1,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => _launchURL(
                            Uri.parse('https://github.com/ZyadWKhedr')),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // LinkedIn Link
              RichText(
                text: TextSpan(
                  style: AppTextTheme.bodySmall(),
                  children: [
                    const TextSpan(text: 'LinkedIn: '),
                    TextSpan(
                      text: 'Zyad Wael',
                      style: AppTextTheme.bodySmall().copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 1,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => _launchURL(Uri.parse(
                            'https://www.linkedin.com/in/zyad-wael-a9035a275/')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
