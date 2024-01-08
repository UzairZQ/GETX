import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    loading = true.obs;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            "email": emailController.value.text,
            "password": passwordController.value.text
          });
      var data = jsonDecode(response.body);
      print(data);

      if (response.statusCode == 200) {
        loading = false.obs;
        print(response.body);
        Get.snackbar('Successful', "Login Successful");
      } else {
        loading = false.obs;
        Get.snackbar('Failed', 'Login Unseccesful');
      }
    } catch (e) {
      loading = false.obs;
      Get.snackbar('Exception', e.toString());
    }
  }
}
