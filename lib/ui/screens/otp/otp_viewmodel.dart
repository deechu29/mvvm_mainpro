import 'package:mvvm_mainpro/app/app.router.dart';
import 'package:mvvm_mainpro/app/utils.dart';
import 'package:stacked/stacked.dart';

class OtpViewmodel extends BaseViewModel {
  OnTap() {
    navigationService.navigateTo(Routes.bottomNavView);
  }
}
