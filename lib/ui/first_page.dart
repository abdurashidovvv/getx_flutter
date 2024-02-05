import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/ui/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirtPage"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.off(SecondPage());
        },
        child: Icon(Icons.next_plan),
      ),
    );
  }
}
