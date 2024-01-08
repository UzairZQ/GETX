import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutroials/controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: const InputDecoration(hintText: 'Enter Email'),
            ),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: const InputDecoration(hintText: 'Enter Password'),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(() {
              return loginController.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        loginController.loginApi();
                      },
                      child: const Icon(Icons.login_outlined));
            })
          ],
        ),
      ),
    );
  }
}
