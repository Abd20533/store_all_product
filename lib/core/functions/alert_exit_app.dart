import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(title: "note", middleText: "is want exit App", actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: const Text("yes")),
    ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: const Text("no"))
  ]);
  return Future.value(true);
}
