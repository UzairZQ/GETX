import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
          child: Column(
        children: [
          ListTile(
            title: Text(
              'message'.tr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:
                Text('name'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English')),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'PK'));
                  },
                  child: const Text('Urdu'))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ScreenTwo()));
                Get.toNamed('/screenTwo');
              },
              child: const Text('Go to Screen 2')),
        ],
      )),
    );
  }
}
