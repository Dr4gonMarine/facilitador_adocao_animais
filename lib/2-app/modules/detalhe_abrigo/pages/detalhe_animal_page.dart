import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';
import 'package:projeto/2-app/shared/uteis/coresAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';

class DetalheAnimalPage extends StatefulWidget {
  const DetalheAnimalPage({super.key});

  @override
  State<DetalheAnimalPage> createState() => _DetalheAnimalPageState();
}

class _DetalheAnimalPageState extends State<DetalheAnimalPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4 * w, vertical: 3 * h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.6), shape: BoxShape.circle),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: TextWidget(
                      "Bartolomeu",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4 * w),
                    child: Center(
                      child: Image.asset(
                        ImagensApp.cachorro3Detalhe,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4 * w, vertical: 3 * h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              TextWidget(
                                "Idade",
                                color: coresAplicativo.padraoApp,
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                "2 anos",
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              TextWidget(
                                "Sexo",
                                color: coresAplicativo.padraoApp,
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                "Macho",
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              TextWidget(
                                "Porte",
                                color: coresAplicativo.padraoApp,
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                "Grande",
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4 * w),
                    height: 1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4 * w, vertical: 3 * h),
                    child: TextWidget(
                      "Descrição",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4 * w),
                    child: TextWidget(
                      "Neste espaço, você encontrará um ambiente seguro e acolhedor, onde os animais são tratados com todo o cuidado e carinho que merecem. A Associação Regional Flor de Liz é um local de adoção comprometido em ajudar animais de estimação...",
                      maxLines: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4 * w),
                    child: TextWidget(
                      "Ver mais",
                      color: coresAplicativo.padraoApp,
                    ),
                  ),
                  SizedBox(height: 3 * h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
