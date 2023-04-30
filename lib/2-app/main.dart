import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto/2-app/modules/home/pages/home_page.dart';

void main() {
  runApp(
    const GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: "Projeto Animais",
    ),
  );
}
