import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:store_all_things/core/class/status_request.dart';
import 'package:store_all_things/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(
      {required String url, required Map data}) async {
    try {
      print("postData");
      if (await checkInternet()) {
        print("checkInternet: yes");

        var response =
            await http.post(Uri.parse("uri"), body: null, headers: null);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responseBody = jsonDecode(response.body);

          ///Map responseBody = jsonDecode(response.body);
          ///data {phone :09867,}
          // Map responseBodyMap=responseBody["data"]["0"][1];

          return Right(responseBody);
        } else {
          print("serverFailure");
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        print("No inter Net");

        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      print("serverFailure");

      return const Left(StatusRequest.failureException);
    }
  }
}
