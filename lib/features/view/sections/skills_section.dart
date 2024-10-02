import 'package:flutter/material.dart';
import 'package:my_portfolio/core/text_theme.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      width: double.infinity,
      color: Colors.white.withOpacity(0.10), // Semi-transparent background
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills',
              style: AppTextTheme.bodyLarge(size: 46),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Technical Skills
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Technical Skills',
                        style: AppTextTheme.bodyMedium(),
                      ),
                      const SizedBox(height: 10),
                      _buildSkillTile('Flutter'),
                      _buildSkillTile('Dart'),
                      _buildSkillTile('State Management (Provider, GetX)'),
                      _buildSkillTile('Git & GitHub'),
                      _buildSkillTile('Java'),
                      _buildSkillTile('RESTful APIs'),
                      _buildSkillTile('Firebase'),
                      _buildSkillTile('Responsive Design'),
                    ],
                  ),
                ),
                const SizedBox(width: 20), // Spacer
                // Soft Skills
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Soft Skills',
                        style: AppTextTheme.bodyMedium(),
                      ),
                      const SizedBox(height: 10),
                      _buildSkillTile('Communication'),
                      _buildSkillTile('Leadership'),
                      _buildSkillTile('Teamwork'),
                      _buildSkillTile('Problem-solving'),
                      _buildSkillTile('Adaptability'),
                      _buildSkillTile('Time Management'),
                      _buildSkillTile('Critical Thinking'),
                      _buildSkillTile('Creativity'),
                      _buildSkillTile('Conflict Resolution'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to create a skill tile
  Widget _buildSkillTile(String skill) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2), // Tile background color
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: Colors.white.withOpacity(0.5)), // Optional border
      ),
      child: Text(
        skill,
        style: AppTextTheme.bodyMedium(), // Adjust text style as needed
      ),
    );
  }
}
