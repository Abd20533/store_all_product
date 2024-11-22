import 'package:store_all_things/core/class/crud.dart';
import 'package:store_all_things/core/constant/app_link_api.dart';

class VerFiyCodeSignUpRemote {
  Crud crud;

  VerFiyCodeSignUpRemote(this.crud);
  getData({required Map<String, String> data}) async {
    var response = await crud.postData(url: AppLinkApi.urlServer, data: data);
    return response.fold((l) => l, (r) => r);
  }
}
