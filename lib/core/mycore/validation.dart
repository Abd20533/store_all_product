import 'package:get/get.dart';

validate(String value, String type) {
  if (value.isEmpty) {
    return 'This field is empty'.tr;
  }
  switch (type) {
    case 'email':
      return !GetUtils.isEmail(value) ? 'not_valid_email'.tr : null;
    case 'password':
      return (value.length < 8) ? 'cant_be_less_than_8_letter'.tr : null;
    case 'phone':
      return !GetUtils.isPhoneNumber(value)
          ? 'not_valid_phone_number'.tr
          : null;
    case 'name':
      return !GetUtils.isUsername(value) ? 'not_valid_Username'.tr : null;

    case 'time':
      return !GetUtils.isDateTime(value) ? 'GetUtils.isDateTime'.tr : null;

    /// case 'date':
    //       return !GetUtils.isDateTime(value) ? 'GetUtils.isDateTime'.tr : null;
    case 'date':
      //return value == null ? 'GetUtils.isDateTime'.tr : null;
      return null;
    case 'age':
      return !GetUtils.isNum(value) ? 'not_valid_Username'.tr : null;
    case 'Confirm':
      return !GetUtils.isNum(value) || value.length != 4
          ? ' not Confirm The Code'.tr
          : null;
    case '':
      return GetUtils.isTxt("") ? null : "";
  }
}
