import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../shared/uteis/imagensAplicativo.dart';
import '../../../shared/uteis/coresAplicativo.dart';
import '../../../shared/uteis/textWidget.dart';

class CardPet extends StatelessWidget {
  late String nome;
  late String raca;

  CardPet({
    super.key,
    required this.nome,
    required this.raca,
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
              ImagensApp.iconePata,
              height: 100,
              color: Colors.red,
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
                  const SizedBox(height: 5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
