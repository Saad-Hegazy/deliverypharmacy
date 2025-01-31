import 'package:deliverypharmacy/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:deliverypharmacy/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:deliverypharmacy/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:deliverypharmacy/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:deliverypharmacy/view/screen/auth/login.dart';
import 'package:deliverypharmacy/view/screen/homescreen.dart';
import 'package:deliverypharmacy/view/screen/language.dart';
import 'package:deliverypharmacy/view/screen/onboarding.dart';
import 'package:deliverypharmacy/view/screen/orders/archive.dart';
import 'package:deliverypharmacy/view/screen/orders/details.dart';
import 'package:deliverypharmacy/view/screen/settings.dart';
import 'package:get/get.dart';
import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () =>   TestView()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  //Home
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  //Orders
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  GetPage(name: AppRoute.Settings, page: () => const Settings()),
  GetPage(name: AppRoute.OrdersArchiveView, page: () => const OrdersArchiveView()),



];