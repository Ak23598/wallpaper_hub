import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_hub/utils/colors.dart';
import 'package:wallpaper_hub/utils/string.dart';
import 'package:wallpaper_hub/view/homeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: AppString.appname,
      theme: ThemeData(
        primaryColor: AppColor.white,
      ),
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    ),
  );
}
