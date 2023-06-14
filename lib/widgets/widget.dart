import 'package:flutter/cupertino.dart';
import 'package:wallpaper_hub/utils/colors.dart';

Widget BrandName(){
  return Row(
    mainAxisAlignment:MainAxisAlignment.center,
    children: const [
      Text("Wallpaper",style: TextStyle(color: AppColor.black,fontWeight: FontWeight.bold,fontFamily: "Fontmirror"),),
      Text("Hub",style: TextStyle(color: AppColor.purple,fontWeight: FontWeight.bold,fontFamily: "Fontmirror"),),
    ],
  );
}