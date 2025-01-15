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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const UserGreeting(),
              const SizedBox(height: 16),
              const SearchAndSettings(),
              const SizedBox(height: 16),
              SectionHeader(title: 'Categories', onSeeMore: () {}),
              const SizedBox(height: 16),
              const Categories(),
              const SizedBox(height: 16),
              const ImageSlider(),
              const SizedBox(height: 16),
              SectionHeader(title: 'Trending Movies', onSeeMore: () {}),
              const SizedBox(height: 16),
              HorizontalList(items: trendingMovies),
              SectionHeader(title: 'Continue Watching', onSeeMore: () {}),
              const SizedBox(height: 10),
              VerticalList(items: continueWatching),
              SectionHeader(title: 'Recommended For You', onSeeMore: () {}),
              const SizedBox(height: 16),
              HorizontalList(items: recommendedForYou),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}













