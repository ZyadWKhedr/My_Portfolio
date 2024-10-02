import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/features/view/sections/about_section.dart';
import 'package:my_portfolio/features/view/sections/contact_section.dart';
import 'package:my_portfolio/features/view/sections/header_section.dart';
import 'package:my_portfolio/features/view/sections/hire_me_section.dart';
import 'package:my_portfolio/features/view/sections/photo_section.dart';
import 'package:my_portfolio/features/view/sections/projects_section.dart';
import 'package:my_portfolio/features/view/sections/skills_section.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';

class MobileLayout extends StatelessWidget {
  final ScrollController scrollController;

  const MobileLayout({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              HeaderSection(scrollController: scrollController),
              const SizedBox(height: 50),
              SectionContainer(
                color: primaryColor,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HireMeSection(),
                    SizedBox(height: 20),
                    PhotoSection(),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              const AboutSection(),
              const SizedBox(height: 70),
              const SkillsSection(),
              const SizedBox(height: 70),
              const ProjectsSection(),
              const SizedBox(height: 70),
              const ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
