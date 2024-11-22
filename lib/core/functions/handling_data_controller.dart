import 'package:store_all_things/core/class/status_request.dart';

handlingDataController(response) {
  if (response is StatusRequest) {
    print("handlingDataController");
    print(response);
    return response;
  } else {
    return StatusRequest.success;
  }
}
