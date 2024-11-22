import 'package:get/get.dart';
import 'package:store_all_things/core/class/status_request.dart';
import 'package:store_all_things/core/functions/handling_data_controller.dart';
import 'package:store_all_things/data/data_sources/remote/test_remote.dart';

abstract class TestController extends GetxController {}

class TestControllerImp extends TestController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();

    // Future.delayed(Duration(seconds: 3), () {
    statusRequest = handlingDataController(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response["data"]);
    }
    update();
    //  });
    print(statusRequest);

    update();
  }

  @override
  void onInit() {
    getData();

    super.onInit();
  }
}
