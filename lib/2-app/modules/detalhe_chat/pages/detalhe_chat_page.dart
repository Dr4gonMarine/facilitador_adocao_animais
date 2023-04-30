import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';
import 'package:projeto/2-app/shared/uteis/coresAplicativo.dart';

import '../../../shared/uteis/imagensAplicativo.dart';
import '../../../shared/uteis/textWidget.dart';

class DetalheChatPage extends StatefulWidget {
  const DetalheChatPage({super.key});

  @override
  State<DetalheChatPage> createState() => _DetalheChatPage();
}

class _DetalheChatPage extends State<DetalheChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          ImagensApp.cachorro1,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextWidget(
                      "Associação Regional Flor de Liz",
                      fontSize: 15,
                      maxLines: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: coresAplicativo.padraoApp,
                    ),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 1,
              color: Colors.black.withOpacity(0.1),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: coresAplicativo.padraoApp,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextWidget(
                    "Hoje",
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  color: coresAplicativo.padraoApp,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                ),
                child: TextWidget(
                  "Olá, gostaria de adotar um cachorro",
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: const BoxDecoration(
                  color: Color(0xffE6E6E6),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                ),
                child: TextWidget(
                  "Olá, Boa Tarde! Me chamo Fabiano e sou o responsável pelo abrigo Associação Regional Flor de Liz. Então, você quer um cachorrinho? Que legal :) Tem preferencia por alguma espécie?",
                  color: const Color(0xff292D32),
                  maxLines: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: coresAplicativo.padraoApp,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  suffixIcon: const Icon(Icons.arrow_forward),
                  labelText: 'Mensagem...',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelStyle: const TextStyle(color: Color(0xff9F9F9F), fontWeight: FontWeight.w500),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF6F6F6), width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF6F6F6), width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF0F0F0),
                ),
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
