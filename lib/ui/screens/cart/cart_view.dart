import 'package:flutter/material.dart';
import 'package:mvvm_mainpro/constants/app_colors.dart';
import 'package:mvvm_mainpro/ui/screens/cart/cart_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewmodel>.reactive(
      viewModelBuilder: () {
        return CartViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          //backgroundColor: ColorConstanse.Scaffoldcolor,
          appBar: AppBar(
            backgroundColor: Palette.white,
            title: Center(
              child: Text(
                "My cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Palette.white),
              ),
            ),
          ),
          body: Column(
              children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Palette.mainblack,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                width: 400,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill, image: NetworkImage("")),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 100),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "detail",
                                style: TextStyle(color: Palette.white),
                              ),
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Text(
                            "price",
                            style: TextStyle(color: Palette.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 230,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 90,
                                ),
                                Container(
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Palette.blue),
                                ),
                                // SizedBox(
                                //   width: 20,
                                // ),
                                Text(
                                  "1",
                                  style: TextStyle(color: Palette.white),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Palette.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          )

              // SizedBox(
              //   height: 20,
              // ),

              ),
        );
      },
    );
  }
}
