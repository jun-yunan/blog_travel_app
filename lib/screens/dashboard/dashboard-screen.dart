import 'package:blog_travel_app/controllers/BlogController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final BlogController blogController = Get.put(BlogController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLOG TRAVEL'),
      ),
      body: Center(
        child: Obx(() => Text('Clicks: ${blogController.count.value}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          blogController.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
