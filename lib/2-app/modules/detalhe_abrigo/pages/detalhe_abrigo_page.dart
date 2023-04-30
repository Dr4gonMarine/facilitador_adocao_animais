import 'package:flutter/material.dart';
import 'package:projeto/2-app/shared/uteis/coresAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/detalhe_Background.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';

import '../widgets/cards_pets.dart';

class DetalheAbrigoPage extends StatelessWidget {
  const DetalheAbrigoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return DetalheBackground(
      children: [
        TextWidget(
          "Associação Regional Flor de Liz",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        SizedBox(
          height: 3 * h,
        ),
        Row(children: [
          Icon(
            Icons.watch_later_outlined,
            color: coresAplicativo.padraoApp,
          ),
          SizedBox(
            width: 2 * w,
          ),
          TextWidget(
            "Aberto",
            color: coresAplicativo.aberto,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            width: 2 * w,
          ),
          TextWidget(
            "Abre seg. às 09:00",
            fontWeight: FontWeight.w600,
          )
        ]),
        SizedBox(
          height: 2 * h,
        ),
        Row(children: [
          Icon(
            Icons.phone,
            color: coresAplicativo.padraoApp,
          ),
          SizedBox(
            width: 2 * w,
          ),
          TextWidget(
            "(14) 3208-0178",
            fontWeight: FontWeight.w600,
          ),
        ]),
        SizedBox(
          height: 2 * h,
        ),
        Row(children: [
          Icon(
            Icons.location_on,
            color: coresAplicativo.padraoApp,
          ),
          SizedBox(
            width: 2 * w,
          ),
          Expanded(
            child: TextWidget(
              maxLines: 2,
              "R. Paes Leme, 6-40 - Vila Flores, Bauru - SP, 17013-180",
              fontWeight: FontWeight.w600,
            ),
          ),
        ]),
        SizedBox(
          height: 2 * h,
        ),
        const Divider(
          thickness: 1,
        ),
        TextWidget(
          "Descrição",
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 2 * h,
        ),
        TextWidget(
          "Neste espaço, você encontrará um ambiente seguro e acolhedor, onde os animais são tratados com todo o cuidado e carinho que merecem. A Associação Regional Flor de Liz é um local de adoção comprometido em ajudar animais de estimação.",
          maxLines: 5,
        ),
        SizedBox(
          height: 2 * h,
        ),
        const Divider(
          thickness: 1,
        ),
        TextWidget(
          "Nossos Pets",
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 2 * h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffF2855C),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Center(
                  child: TextWidget(
                    "Cachorros (3)",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 2 * w,
            ),
            IntrinsicHeight(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Center(
                  child: TextWidget(
                    "Gatos (2)",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff292D32),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2 * h,
        ),
        CardPet(
          nome: 'Bartolomeu',
          raca: 'Golden Retriever',
          idade: 2,
          porte: 'Grande',
          sexo: 'Macho',
          status: 'Disponível',
          imagem: ImagensApp.cachorro3,
        ),
        CardPet(
            nome: 'Gaia',
            raca: 'Shih Tzu',
            idade: 1,
            porte: 'Pequeno',
            sexo: 'Fêmea',
            status: 'Reservado',
            imagem: ImagensApp.cachorro2),
        CardPet(
            nome: 'Princesa',
            raca: 'Vira-lata',
            idade: 2,
            porte: 'Grande',
            sexo: 'Femea',
            status: 'Adotada',
            imagem: ImagensApp.cachorro1),
        SizedBox(
          height: 2 * h,
        ),
      ],
    );
  }
}
