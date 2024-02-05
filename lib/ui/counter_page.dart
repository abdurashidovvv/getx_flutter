import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controller/CounterController.dart';
import 'package:getx_flutter/ui/first_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                counterController.count.toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      counterController.decremet();
                    },
                    child: Text("decrement")),
                TextButton(
                    onPressed: () {
                      counterController.increment();
                    },
                    child: Text("increment")),
              ],
            ),
            IconButton(onPressed: () {
              Get.to(const FirstPage());
            }, icon: Icon(Icons.navigate_next))
          ],
        ),
      ),
    );
  }
}
