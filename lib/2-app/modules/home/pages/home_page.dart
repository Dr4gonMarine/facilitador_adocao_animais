import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:projeto/1-base/behavior/my_scroll_behavior.dart';
import 'package:projeto/2-app/modules/detalhe_abrigo/pages/detalhe_abrigo_page.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';

import '../../../shared/card_abrigo.dart';
import '../widgets/fundo_home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;
  final _imagens = const [
    ImagensApp.imagemCard1,
    ImagensApp.imagemCard2,
    ImagensApp.imagemCard3,
    ImagensApp.imagemCard4,
    ImagensApp.imagemCard5,
  ];


  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: FundoHomeWidget(
        conteudo: ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: ListView.builder(
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          enablePaddingAnimation: false,
          enableFloatingNavBar: true,
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.calendar_month),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.question_mark_rounded),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.question_answer_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
