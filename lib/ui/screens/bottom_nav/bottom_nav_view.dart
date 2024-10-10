import 'package:flutter/material.dart';
import 'package:mvvm_mainpro/constants/color_constants.dart';
import 'package:mvvm_mainpro/ui/screens/bottom_nav/bottom_nav_viewmodel.dart';

import 'package:stacked/stacked.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavViewmodel>.reactive(
      viewModelBuilder: () {
        return BottomNavViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
            // drawer: DrawerScreen(),
            body: viewModel.myscreen[viewModel.selectedIndex],
            backgroundColor: ColorConstanse.mainblack,
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavigationBar(
                  selectedFontSize: 10,
                  unselectedFontSize: 10,
                  backgroundColor: ColorConstanse.mainblack,
                  onTap: (value) {
                    viewModel.bottomNavOntap(value);
                  },
                  type: BottomNavigationBarType.fixed,
                  currentIndex: viewModel.selectedIndex,
                  selectedItemColor: ColorConstanse.white,
                  unselectedItemColor: Colors.grey,
                  items: [
                    BottomNavigationBarItem(
                        backgroundColor: ColorConstanse.white,
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_border_outlined),
                        label: "Favorite"),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_outlined),
                      label: "Cart",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: "Profile"),
                  ]),
            ));
      },
    );
  }
}
