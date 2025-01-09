import 'package:flutter/material.dart';
import 'package:movie_app/components/utils/all_list.dart';
import 'package:movie_app/presentations/widgets/userGreeting.dart';
import '../widgets/categories.dart';
import '../widgets/customBottomNavigationBar.dart';
import '../widgets/horizontalList.dart';
import '../widgets/imageSlider.dart';
import '../widgets/searchAndSettings.dart';
import '../widgets/sectionHeader.dart';
import '../widgets/verticalList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: UserGreeting(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAndSettings(),
              SizedBox(height: 16),
              SectionHeader(title: 'Category', onSeeMore: () {}),
              SizedBox(height: 16),
              Categories(),
              SizedBox(height: 16),
              ImageSlider(),
              SizedBox(height: 16),
              SectionHeader(title: 'Trending Movies', onSeeMore: () {}),
              HorizontalList(items: trendingMovies),
              SectionHeader(title: 'Continue Watching', onSeeMore: () {}),
              VerticalList(items: continueWatching),
              SectionHeader(title: 'Recommended For You', onSeeMore: () {}),
              HorizontalList(items: recommendedForYou),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}













