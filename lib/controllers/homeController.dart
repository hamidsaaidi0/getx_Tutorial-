import 'package:get/get.dart';

class HomeController extends GetxController {
  //Method 1
  // in method you need to add update() to Rebuild
  var counter = 0;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  //obs Method : no need update() method to Rebuild
  // var counter = 0.obs;
  // void increment() {
  //   counter++;
  // }
  //
  // void decrement() {
  //   counter--;
  // }
}
