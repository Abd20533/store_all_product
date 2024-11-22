import 'package:store_all_things/core/class/crud.dart';
import 'package:store_all_things/core/constant/app_link_api.dart';

class SignUpData {
  Crud crud;

  SignUpData(this.crud);
  getData({required Map<String, String> data}) async {
    var response = await crud.postData(url: AppLinkApi.urlServer, data: data);
    return response.fold((l) => l, (r) => r);
  }
}
