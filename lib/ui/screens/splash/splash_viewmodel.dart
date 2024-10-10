import 'dart:async';

import 'package:mvvm_mainpro/app/utils.dart';

import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';

// import '../../../app/app.router.dart';
// import '../../../app/utils.dart';

class SplashViewModel extends BaseViewModel {
  Timer? _timer;
  // final _apiService = locator<ApiService>();
  // final _notificationService = locator<NotificationService>();

  void startTimer() async {
    Future.delayed(Duration(seconds: 3), () {
      navigationService.navigateTo(Routes.loginView);
    });
    // AppUser? user = await _userService.loadCredential();
    // bool hasUser = user?.hasUser ?? false;

    // _notificationService.registerPushNotificationHandler();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
