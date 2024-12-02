import 'package:blog_travel_app/controllers/AuthController.dart';
import 'package:blog_travel_app/screens/auth/components/text-field-auth.dart';
import 'package:blog_travel_app/utils/show-snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Login Screen', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 24),
          TextFieldAuth(
            label: "Email Address",
            hintText: "Enter your email address...",
            controller: authController.emailController.value,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          TextFieldAuth(
            label: "Password",
            hintText: "***********",
            controller: authController.passwordController.value,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 24),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                if (authController.emailController.value.text.isEmpty) {
                  showSnackbar(
                    type: SnackbarType.error,
                    message: 'Email address is required',
                  );
                } else if (authController
                    .passwordController.value.text.isEmpty) {
                  showSnackbar(
                      type: SnackbarType.error,
                      message: 'Password is required');
                } else {
                  showSnackbar(
                    type: SnackbarType.success,
                    message:
                        '${authController.emailController.value.text} ${authController.passwordController.value.text}',
                  );
                }
              },
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
