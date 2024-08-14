import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class KrasswordController extends GetxController {
  RxList<Map<String, dynamic>> lst = <Map<String, dynamic>>[
    {
      "level": 1,
      "question": "Qanoti bor uchmaydi,Quruqlikda yurmaydi.",
      "answer": "baliq",
      "sort": ["q", "l", "a", "b", "i"],
    },
    {
      "level": 2,
      "question": "Osti tosh, usti tosh,O'rtasida chandir bosh.",
      "answer": "toshbaqa",
      "sort": "shaaqotb",
    },
    {
      "level": 3,
      "question": "Oppoqqina dasturxon,Yer yuzini qoplagan.",
      "answer": "qor",
      "sort": "orq"
    },
    {
      "level": 4,
      "question": "Ismi bor,Jismi yo'q",
      "answer": "shamol",
      "sort": "mshoal"
    },
    {
      "level": 5,
      "question": "yer tagida sariq oltin",
      "answer": "sabzi",
      "sort": "isbza"
    },
    {
      "level": 6,
      "question": "Quyon emas,Uzun quloq,Ot emas,To'rtta tuyoq.",
      "answer": "eshak",
      "sort": "kshea"
    },
  ].obs;
  RxInt level = 1.obs;
  RxInt stars = 0.obs;
  RxInt diamond = 50.obs;
  int levelUp = 0;
  RxList alphabit = [
    "k",
    "l",
    "a",
    "j",
    "m",
    "e",
    "q",
    "d",
    "o",
    "p",
    "y",
    "z",
    "x",
    "b",
    "e",
    "q",
    "d",
    "o",
    "a",
    "j",
    "m",
    "e",
  ].obs;

  void addLevel() {
    level++;
    levelUp++;
  }

  void addStars() {
    stars += 2;
  }
}
