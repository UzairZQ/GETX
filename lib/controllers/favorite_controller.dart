import 'package:get/get.dart';

class FavortieController extends GetxController {
  RxList<String> fruitList =
      ['Apple', 'Mango', 'Orange', 'Banana', 'Grapes'].obs;
  RxList tempFruitList = [].obs;

  addToFavorite(String fruit) {
    tempFruitList.add(fruit);
  }

  removeFromFavorite(String fruit) {
    tempFruitList.remove(fruit);
  }
}
