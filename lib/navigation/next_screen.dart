import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Next_screen extends StatelessWidget {
  const Next_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next_screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Next Screen"),
            Get.parameters['id'] == null
                ? Text('arguments : ${Get.arguments ?? 'argument is null'}')
                : Text('id : ${Get.parameters['id']}'),
            ElevatedButton(
              onPressed: () {
                Get.back(
                  result: 'success',

                  /// if your set [closeOverlays] to true, Get.back() will close the
                  /// currently open snackbar/dialog/bottomsheet AND the current page
                  closeOverlays: false,
                );
              },
              child: Text("Get.back()"),
            ),
          ],
        ),
      ),
    );
  }
}
