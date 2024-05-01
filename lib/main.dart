import 'package:farm_project/model/bottom_naviagation_provider.dart';
import 'package:farm_project/pages/home/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavigationProvider(),
      child: MaterialApp(
        title: 'Flutter Bottom Navigation with Provider',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
      ),
    );
  }
}
