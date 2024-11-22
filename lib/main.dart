import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:store_all_things/my_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await CashHelper.init();

  ///initializedServices
  await initializedServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
        locale: localeController.language,
        translations: MyTranslated(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        themeMode: localeController.appThemeMode,
        theme: localeController.appTheme,
        darkTheme: ThemeData.dark(),

        ///routes ready for GetX
        getPages: routesGetX,

        /// for controller to delete
        initialBinding: MyBinding());
  }
}

///
/// //home: const Test(),
/// home: const Language(),
/// routes: routes,
// darkTheme: ThemeData(
//   appBarTheme: AppBarTheme(backgroundColor: Colors.green),
//   backgroundColor: Colors.red,
// ),
/// to important to LocaleController
///BindingsBuilder(() {
/// Get.put(LocaleController());
/// }),
