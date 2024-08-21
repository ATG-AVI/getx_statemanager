import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import the GetX package

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Making the count variable reactive by using RxInt
  final RxInt count = 0.obs;

  void increment() {
    count.value++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(title: Text("State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Count value is ${count.value}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text("Increment"),
                onPressed: increment,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
