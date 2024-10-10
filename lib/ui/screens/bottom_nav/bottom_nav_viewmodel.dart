import 'package:flutter/material.dart';
import 'package:mvvm_mainpro/ui/screens/home/home_view.dart';
import 'package:stacked/stacked.dart';

class BottomNavViewmodel extends BaseViewModel {
  int selectedIndex = 0;
  final List<Widget> myscreen = [
    HomeView(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.amber,
    ),
    // HomeScreen(),
    // FavScreen(),
    // CartScreen(),
    // ProfileScreen(),
  ];
  bottomNavOntap(int value) {
    selectedIndex = value;
    notifyListeners();
  }
}
