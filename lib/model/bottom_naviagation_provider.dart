import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
