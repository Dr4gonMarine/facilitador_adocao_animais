import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto/2-app/shared/uteis/coresAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/detalhe_Background.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';

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
          height: 1 * h,
        ),
        Row(
          children: [
            InkWell(
                onTap: () {},
                child: Icon(
                  Icons.star,
                  color: coresAplicativo.padraoApp,
                )),
            InkWell(
                onTap: () {},
                child: Icon(
                  Icons.star,
                  color: coresAplicativo.padraoApp,
                )),
            InkWell(
                onTap: () {},
                child: Icon(
                  Icons.star,
                  color: coresAplicativo.padraoApp,
                )),
            InkWell(
                onTap: () {},
                child: Icon(
                  Icons.star,
                  color: coresAplicativo.padraoApp,
                )),
            InkWell(
                onTap: () {},
                child: Icon(
                  Icons.star,
                  color: coresAplicativo.padraoApp,
                )),
            SizedBox(
              width: 1 * w,
            ),
            TextWidget(
              "5.0",
              color: coresAplicativo.cinzaClaro,
              fontSize: 18,
            )
          ],
        ),
        SizedBox(
          height: 4 * h,
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
      ],
    );
  }
}
