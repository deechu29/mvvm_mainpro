import 'package:flutter/material.dart';
import 'package:mvvm_mainpro/constants/assets.gen.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onViewModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
              child: Assets.images.splash
                  .image(height: 155, width: 155, fit: BoxFit.fill)),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
