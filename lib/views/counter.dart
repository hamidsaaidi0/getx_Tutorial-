import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/homeController.dart';

class Counter_page extends StatelessWidget {
  /// - [permanent] keeps the Instance in memory and persist it,
  HomeController controller = Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  controller.increment();
                },
                icon: Icon(Icons.add)),
            //Method 1
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                '${controller.counter}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            /*------------------------*/
            // Obs Method
            // GetX<HomeController>(
            //   builder: (controller) => Text(
            //     '${controller.counter}',
            //     style: TextStyle(fontSize: 25),
            //   ),
            // ),
            IconButton(
                onPressed: () {
                  controller.decrement();
                },
                icon: Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}
