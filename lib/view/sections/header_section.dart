import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/text_theme.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SectionContainer(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: 'Zyad',
              style: AppTextTheme.bodyMedium(),
              children: [
                TextSpan(
                  text: 'Wael',
                  style: AppTextTheme.bodyMedium(
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          SectionContainer(
            width: size.width / 3,
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMenuItem('Home', 0),
                _buildMenuItem('About', 1),
                _buildMenuItem('Skills', 2),
                _buildMenuItem('Projects', 3),
              ],
            ),
          ),
          Container(
            child: _buildMenuItem('Contact', 4),
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(String text, int sectionIndex) {
    return GestureDetector(
      onTap: () => _scrollToSection(sectionIndex),
      child: Text(
        text,
        style: AppTextTheme.titleSmall(),
      ),
    );
  }

  void _scrollToSection(int sectionIndex) {
    double offset;

    switch (sectionIndex) {
      case 0: // Home section
        offset = 0;
        break;
      case 1: // About section
        offset = 600;
        break;
      case 2: // Skills section
        offset = 1040;
        break;
      case 3: // Projects section
        offset = 1800;
        break;
      case 4: // Contact section
        offset = 2400;
        break;
      default:
        offset = 0;
    }

    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
