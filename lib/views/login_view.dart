import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';
import 'package:material_text_fields/utils/form_validation.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:tryingolok/controllers/login_view_controller.dart';

class LoginView extends StatelessWidget {
  LoginViewController controller = Get.put(LoginViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            title: Text("Bejelentkezés"),
            backgroundColor: Colors.black54,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Divider(
                  height: 30,
                  color: Colors.black54,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: MaterialTextField(
                      keyboardType: TextInputType.emailAddress,
                      hint: 'Email',
                      labelText: 'Email',
                      controller: controller.email,
                      textInputAction: TextInputAction.next,
                      prefixIconColor: Colors.black54,
                      suffixIconColor: Colors.black54,
                      validator: FormValidation.emailTextField,
                      theme: FilledOrOutlinedTextTheme(
                          enabledColor: Colors.grey,
                          focusedColor: Colors.black54,
                          fillColor: Colors.transparent,
                          iconColor: Colors.black54,
                          floatingLabelStyle: TextStyle(color: Colors.black54)
    
                          // You can use all properties of FilledOrOutlinedTextTheme
                          // to decor text field
                          ),
                      prefixIcon: Icon(
                        CupertinoIcons.mail,
                        color: Colors.black54,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: MaterialTextField(
                      keyboardType: TextInputType.visiblePassword,
                      hint: 'Jelszó',
                      labelText: 'Jelszó',
                      obscureText: true,
                      controller: controller.pwd,
                      textInputAction: TextInputAction.next,
                      prefixIconColor: Colors.black54,
                      suffixIconColor: Colors.black54,
                      theme: FilledOrOutlinedTextTheme(
                          enabledColor: Colors.grey,
                          focusedColor: Colors.black54,
                          fillColor: Colors.transparent,
                          iconColor: Colors.black54,
                          floatingLabelStyle: TextStyle(color: Colors.black54)
    
                          // You can use all properties of FilledOrOutlinedTextTheme
                          // to decor text field
                          ),
                      prefixIcon: Icon(
                        CupertinoIcons.lock,
                        color: Colors.black54,
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                CupertinoButton(
                    color: Colors.black54,
                    child: Text("Bejelentkezés"),
                    onPressed: controller.bejelentkezes)
              ],
            ),
          ),
        );
      }
    );
  }
}
