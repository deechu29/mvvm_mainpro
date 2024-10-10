import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_mainpro/constants/app_colors.dart';
import 'package:mvvm_mainpro/ui/screens/home/home_viewmodel.dart';
import 'package:mvvm_mainpro/ui/screens/home/tabs/all_tab/all_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      viewModelBuilder: () {
        return HomeViewmodel();
      },
      builder: (context, viewModel, child) {
        return DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Palette.white,
              leading: Builder(
                builder: (context) {
                  return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Palette.mainblack,
                      ));
                },
              ),

              // leading: IconButton(
              //    onPressed: () {}, icon: Icon(Icons.location_on_outlined)),
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("Search"),
                        prefix: Icon(Icons.search),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CarouselSlider(
                      items: List.generate(
                        6,
                        (index) => Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/1702373/pexels-photo-1702373.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")))),
                      ),
                      options: CarouselOptions(
                        viewportFraction: 1.0,
                        enlargeCenterPage: true,
                        enlargeFactor: .2,
                        height: 200,
                        autoPlay: true,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TabBar(tabs: [
                    Tab(
                      icon: Container(
                        height: 30,
                        width: 80,
                        color: Palette.primary,
                      ),
                    ),
                    Tab(
                      icon: Container(
                        height: 30,
                        width: 80,
                        color: Palette.primary,
                      ),
                    ),
                    Tab(
                      icon: Container(
                        height: 30,
                        width: 80,
                        color: Palette.primary,
                      ),
                    ),
                    Tab(
                      icon: Container(
                        height: 30,
                        width: 80,
                        color: Palette.primary,
                      ),
                    ),
                    Tab(
                      icon: Container(
                        child: Text("data"),
                        height: 30,
                        width: 80,
                        color: Palette.primary,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      AllView(),
                      Container(
                        color: Palette.LIGHTGREY,
                      ),
                      Container(
                        color: Palette.LIGHTGREY,
                      ),
                      Container(
                        color: Palette.LIGHTGREY,
                      ),
                      Container(
                        color: Palette.LIGHTGREY,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
