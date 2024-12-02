import 'package:get/get.dart';

class BlogController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  final count = Rx<int>(0);

  void increment() {
    count.value++;
  }
}
