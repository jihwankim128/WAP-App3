import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wap_library/components/custom_text_form_feild.dart';
import 'package:wap_library/components/custom_elevated_button.dart';
import 'package:wap_library/pages/user/login_page.dart';
import 'package:wap_library/util/vaildator_util.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            _joinForm(),
            TextButton(
              onPressed: () {
                Get.to(LoginPage());
              },
              child: Text("Do you have ID?"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Student Number",
            funValidator: validateStudentNumber(),
          ),
          CustomTextFormField(
            hint: "Password",
            funValidator: validatePassWord(),
          ),
          CustomTextFormField(
            hint: "E-mail",
            funValidator: validateEmail(),
          ),
          CustomTextFormField(
            hint: "PhoneNumber",
            funValidator: validatePhone(),
          ),
          CustomElevatedButton(
            text: "Approval",
            funPageRoute: () {
              if(_formKey.currentState!.validate()){
                Get.to(LoginPage());
              }
            },
          ),
        ],
      ),
    );
  }
}
