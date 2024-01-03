import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutroials/controllers/counter_controller.dart';
import 'package:getx_tutroials/controllers/slider_controller.dart';
import 'package:getx_tutroials/controllers/switch_controller.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  CounterController myCounter = Get.put(CounterController());

  SliderController sliderController = Get.put(SliderController());

  SwithcController swithcController = Get.put(SwithcController());

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myCounter.incrementCounter();
          },
          child: const Icon(Icons.plus_one)),
      appBar: AppBar(
        title: const Text('Counter with GetX State Management'),
      ),
      body: Column(
        children: [
          Obx(() {
            return Text(
              myCounter.counter.string,
              style: const TextStyle(fontSize: 60),
            );
          }),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // Navigator.pop(context);
                    // Get.back();
                    // Get.back();
                    Get.toNamed('/');
                  },
                  child: const Text('Go to HomeScreen'))),
          Obx(
            () => Container(
                height: 200,
                width: 200,
                color: Colors.blue.withOpacity(sliderController.opactiy.value)),
          ),
          Obx(() => Slider(
              value: sliderController.opactiy.value,
              onChanged: (value) {
                sliderController.setOpactiy(value);
              })),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Notifications'),
              Obx(() => Switch(
                  value: swithcController.notification.value,
                  onChanged: (value) {
                    swithcController.setSwitch(value);
                  }))
            ],
          )
        ],
      ),
    );
  }
}
