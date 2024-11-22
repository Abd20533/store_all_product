import 'package:get/get_navigation/get_navigation.dart';
import 'package:store_all_things/my_import.dart';
import 'package:store_all_things/view/screen/home/home.dart';

List<GetPage<double>>? routesGetX = [
  //MyMiddleWare
  /// اول ما يشتغل التطبيق راح يبدا من| يعني مثل كلمو هووم
  // GetPage(name: "/", page: () => const Test2()),
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),

  ///
  GetPage(
    name: AppNameRoutes.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppNameRoutes.home,
    page: () => const Home(),
  ),
  GetPage(
    name: AppNameRoutes.onBoarding,
    page: () => const OnBoarding(),
  ),
  GetPage(
    name: AppNameRoutes.singUp,
    page: () => const SingUp(),
  ),
  GetPage(
    name: AppNameRoutes.forGetPassword,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: AppNameRoutes.verFiyCode,
    page: () => const VerFiyCode(),
  ),
  GetPage(
    name: AppNameRoutes.resetPassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: AppNameRoutes.successSignUp,
    page: () => const SuccessSignUp(),
  ),
  GetPage(
    name: AppNameRoutes.verFiyCodeSignUp,
    page: () => const VerFiyCodeSignUp(),
  ),
  GetPage(
    name: AppNameRoutes.successResetPassword,
    page: () => const SuccessResetPassword(),
  ),
];

///no important beucuse routesGetX
Map<String, Widget Function(BuildContext)> routes = {
  AppNameRoutes.login: (context) => const Login(),
  AppNameRoutes.onBoarding: (context) => const OnBoarding(),
  AppNameRoutes.singUp: (context) => const SingUp(),
  AppNameRoutes.forGetPassword: (context) => const ForgetPassword(),
  AppNameRoutes.verFiyCode: (context) => const VerFiyCode(),
  AppNameRoutes.resetPassword: (context) => const ResetPassword(),
  AppNameRoutes.successSignUp: (context) => const SuccessSignUp(),
  AppNameRoutes.successResetPassword: (context) => const SuccessResetPassword(),
  AppNameRoutes.verFiyCodeSignUp: (context) => const VerFiyCodeSignUp(),
};
