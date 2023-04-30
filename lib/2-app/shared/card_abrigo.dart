import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto/2-app/shared/uteis/coresAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';

class CardAbrigo extends StatelessWidget {
  late String titulo;
  late String endereco;
  late bool isAberto;
  late String horarioFuncionamento;

  CardAbrigo(
      {super.key,
      required this.titulo,
      required this.endereco,
      required this.isAberto,
      required this.horarioFuncionamento});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(children: [
        //Imagem
        Image.asset(
          ImagensApp.background,
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              titulo,
              fontWeight: FontWeight.bold,
              maxLines: 2,
            ),
            const SizedBox(height: 5),
            TextWidget(endereco),
            const SizedBox(height: 5),
            Row(
              children: [
                TextWidget(isAberto ? "Aberto" : "Fechado",
                    fontWeight: FontWeight.bold,
                    color: isAberto
                        ? coresAplicativo.aberto
                        : coresAplicativo.fechado),
                const SizedBox(width: 10),
                TextWidget("Abre seg. às 09:00")
              ],
            )
          ],
        )
      ]),
    );
  }
}
