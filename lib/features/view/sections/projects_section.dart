import 'package:flutter/material.dart';

import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/text_theme.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Projects',
              style: AppTextTheme.bodyLarge(size: 46),
            ),
            const SizedBox(height: 30),
            _buildProjectItem(
              'Project 1: WizWords',
              'Developed WizWords, a language learning application using Flutter and Firebase, featuring personalized\ncontent and secure authentication',
            ),
            _buildProjectItem(
              'Project 2: CodeQuiz',
              ' Created CodeQuiz, an interactive quiz app with Flutter and a real-time database, supporting Java, Python, JavaScript, and C# quizzes',
            ),
            _buildProjectItem(
              'Project 3:  Weather App',
              ' Developed a Weather App using Flutter and a real-time API to deliver accurate and up-to-date weather information',
            ),
            _buildProjectItem(
              'Project 4: Calculator App',
              'Developed a calculator app using Flutter and Dart that supports core arithmetic functions (addition, subtraction, multiplication, division) with a clean and intuitive user interface',
            ),
          ],
        ),
      ),
    );
  }

  // Method to create each project entry
  Widget _buildProjectItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextTheme.bodyMedium(),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: AppTextTheme.bodySmall(),
          ),
        ],
      ),
    );
  }
}
