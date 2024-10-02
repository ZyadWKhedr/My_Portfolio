import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/text_theme.dart';
import 'package:my_portfolio/features/view/widgets/custom_button.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';

class HireMeSection extends StatelessWidget {
  const HireMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: SectionContainer(
        color: primaryColor,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20), // Add padding for better spacing
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, I\'m Zyad,',
                style: AppTextTheme.bodySmall(),
              ),
              const SizedBox(height: 10),
              // Writing animation for the job title
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Flutter Developer',
                    textStyle: AppTextTheme.bodyLarge(
                      color: secondaryColor,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1, // Run the animation once
                pause: const Duration(milliseconds: 500),
                displayFullTextOnTap: true,
              ),
              const SizedBox(height: 10),
              Text(
                'From Egypt',
                style: AppTextTheme.bodySmall(),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {},
                text: 'Hire me',
                size: Size(size.width * 0.4, 50), // Responsive button size
              ),
            ],
          ),
        ),
      ),
    );
  }
}
