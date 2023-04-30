import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../1-base/behavior/my_scroll_behavior.dart';
import '../../../shared/card_abrigo.dart';
import '../../../shared/uteis/imagensAplicativo.dart';
import '../../detalhe_abrigo/pages/detalhe_abrigo_page.dart';

class FundoHomeWidget extends StatelessWidget {
  final Widget conteudo;
  const FundoHomeWidget({super.key, required this.conteudo});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Text(
                      "Petligit",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Color(0xffA5A5A5),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            ImagensApp.pesquisar,
                            height: 1,
                          ),
                        ),
                        labelText: 'Pesquisar',
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
                        fillColor: const Color(0xffF6F6F6),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(color: Color(0xffF6F6F8), shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        ImagensApp.filtro,
                        height: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: conteudo)
          ],
        ),
      ),
    );
  }
}
