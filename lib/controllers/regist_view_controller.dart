import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tryingolok/views/home_view.dart';

class RegistViewController extends GetxController{
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();


  String selectedGender = "";

  void regist(){
    if(username.text != "" && email.text != "" && pwd.text != ""){
      Get.to(HomeView());
    } else if(username.text == ""){
      Get.dialog(CupertinoAlertDialog(
            title: Text("Hiba"),
            content: Text("Nem adtál meg nevet"),
            actions: [
              CupertinoDialogAction(
                child: Text("Vissza"),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ));
    } else if(email.text == "") {
      Get.dialog(CupertinoAlertDialog(
            title: Text("Hiba"),
            content: Text("Nem adtad meg az emailed"),
            actions: [
              CupertinoDialogAction(
                child: Text("Vissza"),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ));
    } else {
      Get.dialog(CupertinoAlertDialog(
            title: Text("Hiba"),
            content: Text("Nem adtad meg a jelszavad"),
            actions: [
              CupertinoDialogAction(
                child: Text("Vissza"),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ));
    }
  }
}