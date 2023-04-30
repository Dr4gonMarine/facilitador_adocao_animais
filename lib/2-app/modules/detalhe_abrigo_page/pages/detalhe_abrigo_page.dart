import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto/2-app/shared/uteis/detalhe_Background.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';

class DetalheAbrigoPage extends StatelessWidget {
  const DetalheAbrigoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetalheBackground(
      children: [
        TextWidget(
          "Associação Regional Flor de Liz",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )
      ],
    );
  }
}
