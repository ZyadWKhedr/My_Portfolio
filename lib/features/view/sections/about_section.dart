import 'package:flutter/material.dart';
import 'package:my_portfolio/core/text_theme.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';


class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SectionContainer(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About me',
            style: AppTextTheme.bodyLarge(size: 35),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'I’m Zyad Wael, a Flutter developer and student at the Faculty of Computing and Data Science, Alexandria University. I specialize in creating efficient, cross-platform mobile applications using Flutter. My academic journey has strengthened my problem-solving and programming skills, and I’m passionate about continuous learning and contributing to innovative projects in the tech community.',
            style: AppTextTheme.bodySmall(),
          )
        ],
      ),
    );
  }
}
