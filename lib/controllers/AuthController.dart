import 'package:blog_travel_app/screens/auth/login-screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  // static AuthController instance = Get.find();.

  FirebaseAuth auth = FirebaseAuth.instance;
  final Rx<User?> _user = Rx<User?>(null);
  RxBool isLoggedIn = RxBool(false);

  final Rx<TextEditingController> emailController =
      Rx<TextEditingController>(TextEditingController());
  final Rx<TextEditingController> passwordController =
      Rx<TextEditingController>(TextEditingController());

  @override
  void onReady() {
    super.onReady();
    _user.bindStream(auth.userChanges());
    _initializeUserState();
  }

  void _initializeUserState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? email = prefs.getString("email");
    if (email != null) {
      isLoggedIn.value = true;
    } else {
      isLoggedIn.value = false;
    }
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    await auth.signOut();
    isLoggedIn.value = false;
    Get.offAll(() => const LoginScreen());
  }

  Future<void> _saveUser(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("email", email);
  }
}
