import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuto_getx/views/counter.dart';
import 'package:tuto_getx/views/navigation/navigation.dart';
import 'package:tuto_getx/views/navigation/next_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Navigation_screen()),
        GetPage(
          name: '/next',
          page: () => const Next_screen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(seconds: 1),
          curve: Curves
              .easeInOut, //https://api.flutter.dev/flutter/animation/Curves-class.html
        ),
        GetPage(
          name: '/next/:id',
          page: () => const Next_screen(),
        ),
        GetPage(name: '/counter', page: () => Counter_page()),
      ],
      routingCallback: (routing) {
        if (routing!.current == '/next') {
          debugPrint('open ads');
        }
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Navigation_screen(),
    );
  }
}
