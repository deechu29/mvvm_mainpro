import 'package:mvvm_mainpro/ui/screens/bottom_nav/bottom_nav_view.dart';
import 'package:mvvm_mainpro/ui/screens/home/home_screen.dart';
import 'package:mvvm_mainpro/ui/screens/login/login_view.dart';
//import 'package:mvvm_mainpro/ui/screens/home/home_view.dart';

import 'package:mvvm_mainpro/ui/screens/otp/otp_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_service.dart';

import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(
      page: OtpView,
    ),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: BottomNavView),
    MaterialRoute(page: LoginView),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
