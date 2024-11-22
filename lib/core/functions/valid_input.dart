import 'package:get/get.dart';

validInput1(String val, int min, int max, String type) {
  if (type == "userName") {
    if (!GetUtils.isUsername(val)) {
      return "Not valid User name";
    }
    return null;
  }
  if (type == "Password") {
    if (!GetUtils.isPassport(val)) {
      return "Not valid User Password";
    }
    return null;
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not valid User Email";
    }
  }

  if (type == "PhoneNumber") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not valid Phone Number";
    }
  }
  if (type == "userName") {
    if (!GetUtils.isUsername(val)) {
      return "Not valid User name";
    }
  }
  if (val.isEmpty) {
    return "can 't be Empty";
  }
  if (val.length > max) {
    return "can't be larger than $max";
  }
  if (val.length < min) {
    return "can't be less than $min";
  }
}

validInput(String value, int min, int max, String type) {
  if (value.isEmpty) {
    return 'This field is empty'.tr;
  }
  switch (type) {
    case 'email':
      return !GetUtils.isEmail(value) ? 'not_valid_email'.tr : null;
    case 'Password':
      return (value.length > max) || (value.length < min)
          ? 'cant_be_less_than_${max}_letter'.tr
          : null;
    case 'PhoneNumber':
      return !GetUtils.isPhoneNumber(value)
          ? 'not_valid_phone_number'.tr
          : null;
    case 'userName':
      return !GetUtils.isUsername(value) ? 'not_valid_Username'.tr : null;

    case 'time':
      return !GetUtils.isDateTime(value) ? 'GetUtils.isDateTime'.tr : null;

    case 'date':
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
