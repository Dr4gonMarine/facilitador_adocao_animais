import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';

import '../../../1-base/behavior/my_scroll_behavior.dart';

class DetalheBackground extends StatelessWidget {
  List<Widget> children;

  DetalheBackground({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.asset(
            ImagensApp.background,
            fit: BoxFit.fitWidth,
            height: 25 * h,
            width: 100 * w,
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
            height: 25 * h,
            width: 100 * w,
          ),
          ScrollConfiguration(
            behavior: MyScrollBehavior(),
            child: SingleChildScrollView(
              child: Container(
                width: 100 * w,
                margin: EdgeInsets.only(top: h * 22),
                decoration: const BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(children: [
                  SizedBox(
                    height: 2 * h,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    width: 16 * w,
                    height: 0.8 * h,
                  ),
                  SizedBox(
                    height: 4 * h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4 * w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
                    ),
                  )
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4 * w, vertical: 3 * h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
