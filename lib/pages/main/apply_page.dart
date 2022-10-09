import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wap_library/components/custom_elevated_button.dart';
import 'package:wap_library/pages/post/detail_page.dart';

class ApplyPage extends StatelessWidget {
  int count = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.to(DetailPage(), arguments: "index");
            },
            title: Text("제목 1"),
            leading: Text("1"),

          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}