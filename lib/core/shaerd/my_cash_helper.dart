import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putString({required key, required value}) async {
    return await sharedPreferences.setString(key, value);
  }

  static String? getString({required String key}) {
    return sharedPreferences.getString(key);
  }

  static Future<bool> putUser({required String userToken}) async {
    bool putUserToken = await sharedPreferences.setString('token', userToken);
    return putUserToken;
  }

  static Future<bool> putUserFCMToken({required String userToken}) async {
    bool putUserToken =
        await sharedPreferences.setString('fCMToken', userToken);
    return putUserToken;
  }

  static Future<bool> putUserEmail({required String email}) async {
    return await sharedPreferences.setString('email', email);
  }

  static Future<bool> putUserLanguage({required String language}) async {
    return await sharedPreferences.setString('Language', language);
  }

  // ignore: non_constant_identifier_names
  static Future<bool> putUserImage({required String Image}) async {
    return await sharedPreferences.setString('Image', Image);
  }

  static Future<bool> putUserPassword({required String password}) async {
    return await sharedPreferences.setString('password', password);
  }

  static Future<bool> putUserName({required String name}) async {
    return await sharedPreferences.setString('name', name);
  }

  static Future<bool> putUserAge({required String age}) async {
    return await sharedPreferences.setString('age', age);
  }

  static Future<bool> putUserPhone({required String mobile}) async {
    return await sharedPreferences.setString('mobile', mobile);
  }

  static Future<bool> putUserTheme({required String theme}) async {
    return await sharedPreferences.setString('theme', theme);
  }

  static String? getUserToken() {
    return sharedPreferences.getString('token');
  }

  static String? getUserFCMToken() {
    return sharedPreferences.getString('fCMToken');
  }

  static String? getUserImage() {
    return sharedPreferences.getString('Image');
  }

  static String? getUserLanguage() {
    return sharedPreferences.getString('Language');
  }

  static String? getUserPassword() {
    return sharedPreferences.getString('password');
  }

  static String? getUserName() {
    return sharedPreferences.getString('name');
  }

  static String? getUserAge() {
    return sharedPreferences.getString('age');
  }

  static String? getUserTheme() {
    return sharedPreferences.getString('theme');
  }

  static String? getUserPhone() {
    return sharedPreferences.getString('mobile');
  }

  static String? getUserEmail() {
    return sharedPreferences.getString('email');
  }

  static bool isAdmin() {
    //print('in isAdmin function: ${getUserPhone()}');
    return getUserPhone() == '0991996920';
  }

  static Future<bool> putUserId({required int id}) async {
    return await sharedPreferences.setInt('id', id);
  }

  static int? getUserId() {
    return sharedPreferences.getInt('id');
  }

  static logoutUser() {
    sharedPreferences.clear();
  }
}
