import 'package:store_all_things/core/class/crud.dart';
import 'package:store_all_things/core/constant/app_link_api.dart';

class TestData {
  Crud crud;

  TestData(this.crud);
  getData() async {
    // var response=await crud.postData( AppLinkApi.urlServer,{});
    var response = await crud.postData(url: AppLinkApi.urlServer, data: {});

    return response.fold((l) => l, (r) => r);
  }
}
