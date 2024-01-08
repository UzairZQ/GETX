import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutroials/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('GetX Snackbar'),
          onPressed: () {
            Get.snackbar('Alert', 'Button is pressed',
                snackPosition: SnackPosition.BOTTOM);
          }),
      appBar: AppBar(
        title: const Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('GetX operations'),
              subtitle:
                  const Text('Checking the functionalaties of GetX Dialog'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete?',
                  middleText: 'Are you sure you want to delete this card?',
                  confirm: TextButton(
                    onPressed: () {},
                    child: const Text('Delete'),
                  ),
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Cancel')),
                  contentPadding: const EdgeInsets.all(12),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Bottom Sheet'),
              subtitle: const Text(
                  'Checking the functionalaties of GetX bottom sheet and themes'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Light Theme'),
                        trailing: const Icon(Icons.light_mode),
                        onTap: () => Get.changeTheme(ThemeData.light()),
                      ),
                      ListTile(
                        title: const Text('Dark Theme'),
                        trailing: const Icon(Icons.dark_mode),
                        onTap: () => Get.changeTheme(ThemeData.dark()),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
          TextButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ScreenOne()));

                // Get.to(ScreenOne());
                Get.toNamed('/screenOne');
              },
              child: const Text('Go to Screen 1')),
          TextButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ScreenOne()));

                // Get.to(ScreenOne());
                Get.toNamed('/fruitScreen');
              },
              child: const Text('Go to Fruit Screen')),
          TextButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ScreenOne()));

                // Get.to(ScreenOne());
                Get.to(LoginScreen());
              },
              child: const Text('Go to Login Screen'))
        ],
      ),
    );
  }
}
