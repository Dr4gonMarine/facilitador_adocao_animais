import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';
import '../../../../1-base/behavior/my_scroll_behavior.dart';
import '../../../shared/card_abrigo.dart';
import '../../../shared/uteis/imagensAplicativo.dart';
import '../../detalhe_abrigo/pages/detalhe_abrigo_page.dart';
import 'fundo_home_widget.dart';

class ConteudoTabHome extends StatelessWidget {
  const ConteudoTabHome({super.key});

  final _imagens = const [
    ImagensApp.imagemCard1,
    ImagensApp.imagemCard2,
    ImagensApp.imagemCard3,
    ImagensApp.imagemCard4,
    ImagensApp.imagemCard5,
  ];

  @override
  Widget build(BuildContext context) {
    return FundoHomeWidget(
      conteudo: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      "Todos",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
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
                      "Próximo a você",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff292D32),
                    ),
                  ),
                ),
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
                      fontSize: 15,
                      "Aberto agora",
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff292D32),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ScrollConfiguration(
            behavior: MyScrollBehavior(),
            child: ListView(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return IntrinsicHeight(
                      child: InkWell(
                        onTap: () => Get.to(() => const DetalheAbrigoPage()),
                        child: CardAbrigo(
                          imageAsset: _imagens[index],
                          endereco: index % 2 == 0 ? 'Rua Paes Leme, 6-40' : "Av. Rodrigues Alves 7-15",
                          horarioFuncionamento: 'Abre seg. às 09:00',
                          isAberto: index % 2 == 0,
                          titulo: index % 2 == 0 ? "Associação Regional Flor de Liz" : "ONG Arca da Fé - Resgate Animal",
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
