import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutroials/controllers/favorite_controller.dart';

class FruitScreen extends StatefulWidget {
  const FruitScreen({super.key});

  @override
  State<FruitScreen> createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  FavortieController favortieController = Get.put(FavortieController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite Fruit'),
        ),
        body: ListView.builder(
            itemCount: favortieController.fruitList.length,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                    onTap: () {
                      if (favortieController.tempFruitList.contains(
                          favortieController.fruitList[index].toString())) {
                        favortieController.removeFromFavorite(
                            favortieController.fruitList[index].toString());
                      } else {
                        favortieController.tempFruitList.add(
                            favortieController.fruitList[index].toString());
                      }
                    },
                    title: Text(favortieController.fruitList[index].toString()),
                    trailing: Obx(
                      () => Icon(
                        Icons.favorite,
                        color: favortieController.tempFruitList.contains(
                                favortieController.fruitList[index].toString())
                            ? Colors.red
                            : Colors.white,
                      ),
                    )),
              );
            })));
  }
}
