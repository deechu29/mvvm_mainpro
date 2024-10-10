import 'package:flutter/material.dart';
import 'package:mvvm_mainpro/ui/screens/home/tabs/all_tab/all_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AllView extends StatelessWidget {
  const AllView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllViewmodel>.reactive(viewModelBuilder: () {
      return AllViewmodel();
    }, builder: (context, viewModel, child) {
      return  GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 280,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [Text("data")],
                                ),
                                padding: EdgeInsets.all(10),
                                height: 260,
                                width: 300,
                              ),
                              Container(
                                  alignment: Alignment.topRight,
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.favorite_outline,
                                      size: 25,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  height: 200,
                                  width: 300),
                              Positioned(
                                bottom: 20,
                                right: 0,
                                child: Container(
                                  child: Icon(Icons.add),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ]));
    },);
  }
}