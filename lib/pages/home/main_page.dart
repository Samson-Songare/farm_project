import 'package:farm_project/farm_weather/farm_weather.dart';
import 'package:farm_project/finances/finances.dart';
import 'package:farm_project/model/bottom_naviagation_provider.dart';
import 'package:farm_project/pages/home/bottom_navigation_component.dart';
import 'package:farm_project/pages/home/home_page.dart';
import 'package:farm_project/pages/soil_composition/soil_composition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      const SoilComposition(),
      const FarmWeather(),
      const Finances(),
    ];
    final provider = Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bottom Navigation with Provider'),
      ),
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: (index) {
          provider.changeIndex(index);
        },
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
