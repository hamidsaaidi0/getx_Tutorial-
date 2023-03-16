import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuto_getx/navigation/next_screen.dart';

class Navigation_screen extends StatelessWidget {
  const Navigation_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Using a widget function instead of a widget
                // fully guarantees that the widget and its controllers
                // will be removed from memory when they are no longer used.
                Get.to(
                  () => Next_screen(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves
                      .easeInOut, //https://api.flutter.dev/flutter/animation/Curves-class.html
                  arguments: 'Hello word from Get.to()',
                );
                //Get.to() Like Navigator.push(context,MaterialPageRoute(builder: (context) => Next_screen(),),);
              },
              child: Text('Get.to(NextScreen())'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(
                  () => Next_screen(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves
                      .easeInOut, //https://api.flutter.dev/flutter/animation/Curves-class.html
                  arguments: 'Hello word from Get.off()',
                );
              },
              child: Text("Get.off(NextScreen())"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/next',
                  arguments: 'Hello word from Get.toNamed()',
                );
                //Get.to() Like Navigator.push(context,MaterialPageRoute(builder: (context) => Next_screen(),),);
              },
              child: Text('Get.toNamed("/next")'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed(
                  '/next',
                  //arguments: 'Hello word from Get.off()',
                );
              },
              child: Text("Get.offNamed('/next')"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/next/123',
                );
                //Get.to() Like Navigator.push(context,MaterialPageRoute(builder: (context) => Next_screen(),),);
              },
              child: Text('Get.toNamed("/next/123")'),
            ),
          ],
        ),
      ),
    );
  }
}
