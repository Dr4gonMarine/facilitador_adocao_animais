import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../shared/uteis/imagensAplicativo.dart';
import '../../../shared/uteis/coresAplicativo.dart';
import '../../../shared/uteis/textWidget.dart';

class CardPet extends StatelessWidget {
  late String nome;
  late String raca;
  late String porte;
  late int idade;
  late String sexo;
  late String status;
  late String imagem;

  CardPet({
    super.key,
    required this.nome,
    required this.raca,
    required this.porte,
    required this.idade,
    required this.sexo,
    required this.status,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            //Imagem
            Image.asset(
              imagem,
              height: 120,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    nome,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 1),
                  Row(
                    children: [
                      Image.asset(
                        ImagensApp.iconePatinha,
                        scale: 3,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextWidget(raca),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                        child: TextWidget(
                          "$porte porte",
                          color: coresAplicativo.padraoApp,
                        ),
                        decoration: BoxDecoration(
                            color: coresAplicativo.padraoApp.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                        child: TextWidget(
                          "$idade anos",
                          color: coresAplicativo.padraoApp,
                        ),
                        decoration: BoxDecoration(
                            color: coresAplicativo.padraoApp.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                        child: TextWidget(
                          sexo,
                          color: sexo == "Macho"
                              ? coresAplicativo.macho
                              : coresAplicativo.femea,
                        ),
                        decoration: BoxDecoration(
                            color: coresAplicativo.padraoApp.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                        child: TextWidget(
                          status,
                          color: coresAplicativo.padraoApp,
                        ),
                        decoration: BoxDecoration(
                            color: coresAplicativo.padraoApp.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
