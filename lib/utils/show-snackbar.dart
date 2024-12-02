import 'package:get/get.dart';
import 'package:flutter/material.dart';

enum SnackbarType { success, error, warning, info }

void showSnackbar(
    {SnackbarType? type = SnackbarType.info, required String message}) {
  switch (type) {
    case SnackbarType.success:
      Get.snackbar(
        'Success',
        message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        icon: const Icon(
          Icons.check,
          color: Colors.white,
        ),
        shouldIconPulse: true,
        mainButton: TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      break;

    case SnackbarType.error:
      Get.snackbar(
        'Error',
        message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
        shouldIconPulse: true,
        mainButton: TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      break;

    case SnackbarType.warning:
      Get.snackbar(
        'Warning',
        message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        icon: const Icon(
          Icons.warning,
          color: Colors.white,
        ),
        shouldIconPulse: true,
        mainButton: TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      break;

    default:
      Get.snackbar(
        'Info',
        message,
        snackPosition: SnackPosition.TOP,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        shouldIconPulse: true,
        mainButton: TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      break;
  }
}
