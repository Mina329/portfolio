import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/desktop_about_section_view.dart';
import 'package:portfolio/features/contacts/presentation/view/desktop_contacts_section_view.dart';
import 'package:portfolio/features/home/presentation/view/desktop_home_section_view.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar.dart';
import 'package:portfolio/features/projects/presentation/view/desktop_projects_section_view.dart';
import 'package:portfolio/features/services/presentation/view/desktop_services_section_view.dart';

class PortfolioDesktopLayout extends StatelessWidget {
  const PortfolioDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: DesktopNavigationBar(),
        ),
        Flexible(
          child: CustomScrollView(
            slivers: [
              // SliverPersistentHeader(
              //   pinned: true,
              //   delegate: CustomSliverAppBarDelegate(
              //     maxHeight: 60.0,
              //     minHeight: 60.0,
              //     child: const Padding(
              //       padding: EdgeInsets.symmetric(horizontal: 20),
              //       child: DesktopNavigationBar(),
              //     ),
              //   ),
              // ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: DesktopHomeSectionView(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: DesktopAboutSectionView(),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SliverToBoxAdapter(
                child: DesktopServicesSectionView(),
              ),
              SliverToBoxAdapter(
                child: DesktopProjectsSectionView(),
              ),
              SliverToBoxAdapter(
                child: DesktopContactSectionView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Developed in 💙 with '),
                      Text('Flutter',style: TextStyle(color: Colors.blue),),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
