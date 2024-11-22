import 'package:flutter/material.dart';
import 'package:store_all_things/controller/test_remote_controoler.dart';
import 'package:store_all_things/core/class/status_request.dart';
import 'package:store_all_things/my_import.dart';
import 'package:get/get.dart';

class TestViewController extends StatelessWidget {
  const TestViewController({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestControllerImp);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test "),
        centerTitle: true,
      ),
      body: GetBuilder<TestControllerImp>(
        builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
            return const CircularProgressIndicator(
              color: Colors.blue,
            ).center();
          }
          if (controller.statusRequest == StatusRequest.serverFailure) {
            return const Text("serverFailure").center();
          }
          if (controller.statusRequest == StatusRequest.offlineFailure) {
            return const Text("offlineFailure").center();
          }
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Text("${controller.data[index]}");
            },
          );
        },
      ),
    );
  }
}
