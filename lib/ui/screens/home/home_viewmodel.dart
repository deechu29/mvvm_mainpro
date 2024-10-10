import 'package:mvvm_mainpro/app/app.router.dart';
import 'package:mvvm_mainpro/app/utils.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  void logout() {
    navigationService.pushNamedAndRemoveUntil(Routes.otpView);
  }
}
