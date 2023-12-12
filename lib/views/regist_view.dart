import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';
import 'package:material_text_fields/utils/form_validation.dart';
import 'package:tryingolok/controllers/regist_view_controller.dart';
import 'package:tryingolok/views/login_view.dart';

class RegistView extends StatelessWidget {
  RegistViewController controller = RegistViewController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.grey.shade100,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.black54,
              child: Icon(Icons.navigate_next_outlined),
              onPressed: () {
                controller.regist();
              },
            ),
            appBar: AppBar(
              title: Text("Regisztráció"),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      child: MaterialTextField(
                        keyboardType: TextInputType.text,
                        hint: 'Név',
                        labelText: 'Név',
                        controller: controller.username,
                        textInputAction: TextInputAction.next,
                        prefixIconColor: Colors.black54,
                        suffixIconColor: Colors.black54,
                        theme: FilledOrOutlinedTextTheme(
                            enabledColor: Colors.grey,
                            focusedColor: Colors.black54,
                            fillColor: Colors.transparent,
                            iconColor: Colors.black54,
                            floatingLabelStyle:
                                TextStyle(color: Colors.black54)),
                        prefixIcon: Icon(
                          CupertinoIcons.person_fill,
                          color: Colors.black54,
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
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
                            floatingLabelStyle:
                                TextStyle(color: Colors.black54)),
                        prefixIcon: Icon(
                          CupertinoIcons.mail,
                          color: Colors.black54,
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      child: MaterialTextField(
                        keyboardType: TextInputType.text,
                        hint: 'Jelszó',
                        labelText: 'Jelszó',
                        controller: controller.pwd,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        prefixIconColor: Colors.black54,
                        suffixIconColor: Colors.black54,
                        theme: FilledOrOutlinedTextTheme(
                            enabledColor: Colors.grey,
                            focusedColor: Colors.black54,
                            fillColor: Colors.transparent,
                            iconColor: Colors.black54,
                            floatingLabelStyle:
                                TextStyle(color: Colors.black54)),
                        prefixIcon: Icon(
                          CupertinoIcons.lock,
                          color: Colors.black54,
                        ),
                      )),
                  Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text(
                    "Nemed",
                    style: TextStyle(fontSize: 25),
                  ),
                  FlutGroupedButtons(
                    activeColor: Colors.black54,
                    isRadio: true,
                    data: [
                      "Nő",
                      "Férfi",
                    ],
                    onChanged: (p0) {
                      if (p0 != null) {
                        controller.selectedGender = p0.toString();
                      } else {
                        controller.selectedGender = "";
                      }
                    },
                  ),
                  Divider(
                    height: 30,
                    color: Colors.black54,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.all(16.0), // Adjust the padding as needed
                      child: CupertinoButton(
                        child: Text(
                          "Már van fiókod?",
                          style: TextStyle(color: Colors.black54),
                        ),
                        onPressed: () {
                          Get.to(LoginView(), transition: Transition.cupertino);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
        );
      }
    );
  }
}