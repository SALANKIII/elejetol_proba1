import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tryingolok/controllers/home_view_controller.dart';
import 'package:tryingolok/models/users.dart';

class HomeView extends StatelessWidget {
  HomeView(User user);
  HomeViewController controller = HomeViewController();

  @override
  Widget build(BuildContext context) {   
  User user = User(username: controller.username.text, email: controller.email.text, pwd: controller.pwd.text, gender: true);
    return GetBuilder<HomeViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Kezdőlap"),
            backgroundColor: Colors.black54,
            centerTitle: true,
          ),
          drawer: Drawer(child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("${user.gender}"),
                accountEmail: Text(""),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
            ],
          )),
        );
      }
    );
  }
}
